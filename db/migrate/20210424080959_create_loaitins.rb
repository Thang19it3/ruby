class CreateLoaitins < ActiveRecord::Migration[6.1]
  def change
    create_table :loaitins do |t|
      t.string :tenLoaiTin
      t.references :theloais, null: false, foreign_key: true

      t.timestamps
    end
  end
end
