class AddFavoriteColorToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :favorite_color, :string
  end
end
