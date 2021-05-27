class AddProductsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :products, :integer, array: true, default: []
  end
end
