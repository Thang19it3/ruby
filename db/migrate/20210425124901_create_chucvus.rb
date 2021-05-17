class CreateChucvus < ActiveRecord::Migration[6.1]
  def change
    create_table :chucvus do |t|
      t.string :tenChucVu

      t.timestamps
    end
  end
end
