class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.boolean :is_delivery
      t.integer :layers
      t.string :filling

      t.timestamps
    end
  end
end
