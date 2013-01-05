class AddAttitudesToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :attitude1, :string
    add_column :positions, :attitude2, :string
    add_column :positions, :attitude3, :string
    add_column :positions, :attitude4, :string
    add_column :positions, :attitude5, :string
  end
end
