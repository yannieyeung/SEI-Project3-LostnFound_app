class Lostpets < ActiveRecord::Migration[5.2]
  def change
    create_table :lostpets do |t|
      t.string :animal
      t.string :colour
      t.string :description
      t.string :location
      t.string :image_url
      t.references :user
      t.timestamps
    end
  end
end
