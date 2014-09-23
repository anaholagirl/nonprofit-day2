class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :from
      t.integer :nonprofit_id
      t.integer :amount

      t.timestamps
    end
  end
end
