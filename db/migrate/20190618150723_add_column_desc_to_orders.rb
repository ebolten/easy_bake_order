class AddColumnDescToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :desc, :string
  end
end
