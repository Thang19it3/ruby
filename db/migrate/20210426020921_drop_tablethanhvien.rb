class DropTablethanhvien < ActiveRecord::Migration[6.1]
  def change
    drop_table :thanhviens
  end
end
