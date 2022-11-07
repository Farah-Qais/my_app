class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string:identifier,null:false
      t.timestamps
    end
  end
end
