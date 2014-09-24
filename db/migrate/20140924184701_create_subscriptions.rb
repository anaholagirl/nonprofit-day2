class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :nonprofit_id
      t.string :plan_name
      t.integer :price
    end
  end
end
