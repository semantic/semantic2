class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :sponsor_id
      t.integer :episode_id

      t.timestamps
    end
  end
end
