class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.boolean :host
      t.text :bio
      t.text :dump
      t.string :screen_name
      t.string :avatar_url
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
