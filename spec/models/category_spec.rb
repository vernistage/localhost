require 'rails_helper'

describe Category do
 let(:host) { User.create!({
    name: "Host",
    email: "host@host.com",
    password: "password",
    homebase: "hosthome",
    host: true
  }) }

  let(:category) { Category.find_or_create_by!({
    title: "Test",
    description: "testing the description."
  }) }

  let(:uc) { UserCategory.find_or_create_by!({
    host_id: host.id,
    category_id: category.id
  }) }

  describe "category attributes" do
    it "#title" do
      expect(category.title).to eq "Test"
    end

    it "#description" do
      expect(category.description).to eq "testing the description."
    end
  end

  describe "user category join table attributes" do
    it "#host_id" do
      expect(uc.host_id).to eq host.id
    end

    it "category_id" do
      expect(uc.category_id).to eq category.id
    end
  end

  describe "category associations" do
    it "category has a host" do
      expect(category.hosts).to be_a(User::ActiveRecord_Associations_CollectionProxy)
    end
  end

end
