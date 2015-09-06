class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :status
      t.string :seat_no
      t.string :seat_type
      t.integer :user_id

      t.timestamps
    end
  end
end
