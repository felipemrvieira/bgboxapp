class AddWodAndUserToCheckin < ActiveRecord::Migration[5.1]
  def change
    add_reference :checkins, :wod, foreign_key: true
    add_reference :checkins, :user, foreign_key: true
  end
end
