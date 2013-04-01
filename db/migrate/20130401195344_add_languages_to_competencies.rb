class AddLanguagesToCompetencies < ActiveRecord::Migration
  def change
    add_column :competencies, :french, :string
    add_column :competencies, :spanish, :string
  end
end
