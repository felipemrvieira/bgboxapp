class CreateWodCoaches < ActiveRecord::Migration[5.1]
  def change
    create_table :wod_coaches do |t|
      t.references :wod, foreign_key: true
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
