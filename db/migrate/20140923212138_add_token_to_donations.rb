class AddTokenToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :token, :text
  end
end
