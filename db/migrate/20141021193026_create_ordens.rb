class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.datetime :fecha_uso
      t.integer :user_id

      t.timestamps
    end
  end
end
