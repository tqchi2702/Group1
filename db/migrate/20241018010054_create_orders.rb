class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :totalprice
      t.references :waiter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
