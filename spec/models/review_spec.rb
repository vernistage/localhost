require 'rails_helper'

describe Review do
  let(:host) { User.create!({
    name: "Host",
    email: "host@host.com",
    password: "password",
    homebase: "hosthome",
    host: true
    }) }

  let(:guest) { User.create!({
    name: "Guest",
    email: "guest@guest.com",
    password: "password",
    homebase: "guesthome",
    host: false
    }) }

  let(:booking) { Booking.find_or_create_by!({
    guest_id: guest.id,
    host_id: host.id,
    meet_location: "test location",
    summary: "testing the summary"
    }) }

  let(:review) { Review.find_or_create_by!({
    booking_id: booking.id,
    body: "three stars for this test review",
    rating: 3,
    }) }

  describe "review attributes" do
    it "#booking_id" do
      expect(review.booking_id).to eq booking.id
    end

    it "#body" do
      expect(review.body).to eq "three stars for this test review"
    end

    it "#rating" do
      expect(review.rating).to eq 3
    end

  end

  describe "review associations" do
    it "review has a guest" do
        expect(review.guest).to eq guest
    end

    it "review has a host" do
        expect(review.host).to eq host
    end
  end
end
