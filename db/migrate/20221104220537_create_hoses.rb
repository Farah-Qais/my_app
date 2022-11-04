class CreateHoses < ActiveRecord::Migration[7.0]
  def change
    create_table :hoses do |t|
      t.string :user_id
      t.integer :price
      t.integer :size

      t.timestamps
    end
  end
end
