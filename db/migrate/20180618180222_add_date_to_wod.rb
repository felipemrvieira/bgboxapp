class AddDateToWod < ActiveRecord::Migration[5.1]
  def change
    add_column :wods, :wod_date, :datetime
  end
end
