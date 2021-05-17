class AddImageToDoibongs < ActiveRecord::Migration[6.1]
  def change
    add_column :doibongs, :image, :string
    add_column :doibongs, :string, :string
  end
end
