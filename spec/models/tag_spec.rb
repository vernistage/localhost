require 'rails_helper'

describe Tag do
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

  let(:tag) { Tag.find_or_create_by!({
    specialty: "max test",
    category_id: category.id
  }) }

  describe "tag attributes" do
    it "tag has a specialty" do
      expect(tag.specialty).to eq "max test"
    end

    it "tag has a category id" do
      expect(tag.category_id).to eq category.id
    end
  end

  describe "tag associations" do
     it "tag has a category" do
      expect(tag.category).to be_a(Category)
    end

    it "tag has a category" do
      expect(tag.host).to be_a(User::ActiveRecord_Associations_CollectionProxy)
    end
  end

end
