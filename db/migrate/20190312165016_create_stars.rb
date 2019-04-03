class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.string :color
      t.string :url
      

      t.timestamps
    end
  end
end
