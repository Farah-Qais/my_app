class CreateBook2s < ActiveRecord::Migration[7.0]
  def change
    create_table :book2s do |t|
      t.string :title,null:false,index:true
      t.string :author,null:false,index:true

      t.timestamps
    end
  end
end
