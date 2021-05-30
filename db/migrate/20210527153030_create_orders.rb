class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :orders, [:user_id, :created_at]
  end
end
