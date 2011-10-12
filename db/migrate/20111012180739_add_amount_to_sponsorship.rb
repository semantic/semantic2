class AddAmountToSponsorship < ActiveRecord::Migration
  def change
    change_table :sponsorships do |t|
      t.float :amount
    end
  end
end
