class AddColumnsToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :name, :string
    add_column :albums, :description, :text
  end
end
