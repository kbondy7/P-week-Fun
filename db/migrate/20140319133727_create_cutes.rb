class CreateCutes < ActiveRecord::Migration
  def change
    create_table :cutes do |t|
      t.string :Animal
      t.string :image_url
      t.text :description
      t.integer :level_of_cuteness

      t.timestamps
    end
  end
end
