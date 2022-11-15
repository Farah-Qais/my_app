class CreateCar4s < ActiveRecord::Migration[7.0]
  def change
    create_table :car4s do |t|
      t.string :make,null:false,index:true
      t.string :model,null:false,index:true
      t.string :year,null:false,index:true
      t.string :vin,null:false,index:true
      t.string :color,null:false,index:true

      t.timestamps
    end
  end
end
