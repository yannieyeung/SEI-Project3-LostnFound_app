class Names < ActiveRecord::Migration[5.2]
  def change
        create_table :names do |t|
      t.string :name
      t.references :user
      t.timestamps
    end
  end
end
