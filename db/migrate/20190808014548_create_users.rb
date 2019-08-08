class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :names
      t.string :paternal_surname
      t.string :maternal_surname
      t.integer :age
      t.boolean :active
      t.timestamps
    end
  end
end
