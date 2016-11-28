class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :host_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
