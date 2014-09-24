class RenameFromToUserIdInDonations < ActiveRecord::Migration
  def change
    remove_column :donations, :from
    add_column :donations, :user_id, :integer
  end
end
