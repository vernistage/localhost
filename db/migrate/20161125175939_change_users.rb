class ChangeUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :homebase, :string
    add_column :users, :host, :boolean, default: false
  end
end
