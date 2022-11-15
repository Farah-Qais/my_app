class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :serial,null:false,index:true
      t.string :version,null:false,index:true
      t.string :platform,null:false,index:true
      t.belongs_to :book2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
