class CreateHntReserves < ActiveRecord::Migration
  def change
    create_table :hnt_reserves do |t|
      t.string :restaurant_name
      t.string :customer_name
      t.string :reserve_date
      t.string :reserve_time
      t.string :number_of_ppl
      t.string :phone

      t.timestamps
    end
  end
end
