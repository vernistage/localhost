class CreateUserTags < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tags do |t|
      t.integer :host_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
