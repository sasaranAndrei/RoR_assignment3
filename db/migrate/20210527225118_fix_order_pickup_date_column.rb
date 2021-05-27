class FixOrderPickupDateColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :pickup_date, :delivery_date
  end
end
