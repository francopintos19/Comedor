class CreateOrdenproductos < ActiveRecord::Migration
  def change
    create_table :ordenproductos do |t|
      t.integer :producto_id
      t.integer :orden_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
