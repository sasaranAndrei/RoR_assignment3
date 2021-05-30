class FixOrderDateColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :date, :pickup_date
  end
end
