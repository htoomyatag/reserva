class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :shop_name
      t.string :shop_address
      t.string :user_name

      t.timestamps
    end
  end
end
