class ChangeYearColumnToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :year, 'integer USING CAST(year AS integer)'
  end
end
