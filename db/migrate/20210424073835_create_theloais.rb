class CreateTheloais < ActiveRecord::Migration[6.1]
  def change
    create_table :theloais do |t|
      t.string :tenTheLoai

      t.timestamps
    end
  end
end
