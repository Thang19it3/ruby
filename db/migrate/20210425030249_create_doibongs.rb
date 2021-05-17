class CreateDoibongs < ActiveRecord::Migration[6.1]
  def change
    create_table :doibongs do |t|
      t.string :tenDoiBong
      t.string :tenVietTat
      t.string :date
      t.string :khauHieu
      t.integer :id_user
      t.string :trandau

      t.timestamps
    end
  end
end
