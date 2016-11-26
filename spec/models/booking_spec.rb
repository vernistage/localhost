require 'rails_helper'

describe Booking do
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

  describe "booking attributes" do
    it "#guest_id" do
      expect(booking.guest_id).to eq guest.id
    end

    it "#host_id" do
      expect(booking.host_id).to eq host.id
    end

    it "meet_location" do
      expect(booking.meet_location).to eq "test location"
    end

    it "summary" do
      expect(booking.summary).to eq "testing the summary"
    end

  end

  describe "booking associations" do
    it "booking has a guest" do
        expect(booking.guest).to eq guest
    end

    it "booking has a host" do
        expect(booking.host).to eq host
    end
  end
end
