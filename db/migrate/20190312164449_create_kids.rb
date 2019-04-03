class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :birthday
      t.integer :user_id

      t.timestamps
    end
  end
end
