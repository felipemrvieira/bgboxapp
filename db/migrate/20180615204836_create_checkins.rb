class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.text :obs

      t.timestamps
    end
  end
end
