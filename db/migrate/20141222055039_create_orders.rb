class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :res_time
      t.string :res_date
      t.string :number_of_guest
      t.text :special_request
      t.string :contact_number
      t.string :email

      t.timestamps
    end
  end
end
