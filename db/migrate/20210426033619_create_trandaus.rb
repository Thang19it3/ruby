class CreateTrandaus < ActiveRecord::Migration[6.1]
  def change
    create_table :trandaus do |t|
      t.integer :id_db1
      t.integer :id_db2
      t.string :time
      t.date :ngay
      t.integer :id_user
      t.string :confirm
      t.string :string
      t.integer :id_user2

      t.timestamps
    end
  end
end
