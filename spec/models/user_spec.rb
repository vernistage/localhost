require 'rails_helper'

describe User do
  let(:host) { User.new({
    name: "Host",
    email: "host@host.com",
    password: "password",
    homebase: "hosthome",
    host: true
    }) }

  let(:guest) { User.new({
    name: "Guest",
    email: "guest@guest.com",
    password: "password",
    homebase: "guesthome",
    host: false
    }) }

  describe "host attributes" do
    it "host has a name" do
      expect(host.name).to eq "Host"
    end

    it "host has an email" do
      expect(host.email).to eq "host@host.com"
    end

    it "host has a hashed password per Devise" do
      expect(host.encrypted_password).not_to eq ""
    end

    it "host has a homebase" do
      expect(host.homebase).to eq "hosthome"
    end

    it "host has a homebase" do
      expect(host.host).to be true
    end
  end

  describe "guest attributes" do
    it "is not a host" do
      expect(guest.host).to be false
    end
  end

  describe "guest associations" do
    it "guest has bookings" do
        expect(guest.guest_bookings).to be_a(Booking::ActiveRecord_Associations_CollectionProxy)
    end

    it "guest has reviews" do
        expect(guest.guest_reviews).to be_a(Review::ActiveRecord_Associations_CollectionProxy)
    end

    it "guest does not have categories" do
        expect(guest.categories).to be_empty
    end

    it "guest does not have tags" do
        expect(guest.tags).to be_empty
    end
  end

  describe "host associations" do
    it "host has bookings" do
        expect(host.host_bookings).to be_a(Booking::ActiveRecord_Associations_CollectionProxy)
    end

    it "host has reviews" do
        expect(host.host_reviews).to be_a(Review::ActiveRecord_Associations_CollectionProxy)
    end

    it "host has categories" do
      expect(host.categories).to be_a(Category::ActiveRecord_Associations_CollectionProxy)
    end

    it "host has tags" do
      expect(host.tags).to be_a(Tag::ActiveRecord_Associations_CollectionProxy)
    end
  end

end
