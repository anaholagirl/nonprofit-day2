class ChangeEverything < ActiveRecord::Migration

  def change
    create_table :plans do |t|
      t.string :name
    end
    drop_table :collections
    add_column :subscriptions, :user_id, :integer
    add_column :subscriptions, :plan_id, :integer
    add_column :subscriptions, :token, :text
    remove_column :subscriptions, :plan_name
    remove_column :subscriptions, :price
  end

end
