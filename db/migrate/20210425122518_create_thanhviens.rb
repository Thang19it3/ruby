class CreateThanhviens < ActiveRecord::Migration[6.1]
  def change
    create_table :thanhviens do |t|
      t.string :tenThanhVien
      t.string :chucVu
      t.integer :sdt
      t.string :id_user
      t.references :doibongs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
