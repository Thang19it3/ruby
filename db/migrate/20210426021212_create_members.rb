class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :tenTv
      t.string :sdt
      t.string :chucVu
      t.string :id_user
      t.references :doibongs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
