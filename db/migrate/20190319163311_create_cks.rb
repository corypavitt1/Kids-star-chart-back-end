class CreateCks < ActiveRecord::Migration[5.2]
  def change
    create_table :cks do |t|
      t.integer :chore_id
      t.integer :star_id
      t.integer :kid_id
      t.string :url

      t.timestamps
    end
  end
end
