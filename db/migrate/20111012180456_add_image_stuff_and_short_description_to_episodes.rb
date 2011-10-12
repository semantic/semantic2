class AddImageStuffAndShortDescriptionToEpisodes < ActiveRecord::Migration
  def change
    change_table :episodes do |t|
      t.string :image
      t.text :image_description
      t.string :short_description
    end
  end
end
