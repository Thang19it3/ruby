class CreateTintucs < ActiveRecord::Migration[6.1]
  def change
    create_table :tintucs do |t|
      t.string :tieuDe
      t.string :tomTat
      t.string :noiDung
      t.string :image
      t.string :date
      t.string :noiBat
      t.references :loaitins, null: false, foreign_key: true

      t.timestamps
    end
  end
end
