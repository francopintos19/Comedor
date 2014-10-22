class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :cantidad
      t.integer :producto_id

      t.timestamps
    end
  end
end
