class CreateUser2s < ActiveRecord::Migration[7.0]
  def change
    create_table :user2s do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
