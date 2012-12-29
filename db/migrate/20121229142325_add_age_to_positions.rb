class AddAgeToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :age, :integer
  end
end
