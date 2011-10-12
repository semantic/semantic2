class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.string :title
      t.integer :number
      t.text :notes
      t.string :file
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
