class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :office_name

      t.timestamps
    end
  end
end
