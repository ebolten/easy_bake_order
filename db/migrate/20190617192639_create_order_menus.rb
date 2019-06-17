class CreateOrderMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :order_menus do |t|
      t.integer :order_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
