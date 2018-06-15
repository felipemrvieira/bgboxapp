class CreateWods < ActiveRecord::Migration[5.1]
  def change
    create_table :wods do |t|
      t.text :pre
      t.text :technique
      t.text :workout
      t.text :pos

      t.timestamps
    end
  end
end
