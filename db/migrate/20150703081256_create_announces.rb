class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.string :title
      t.integer :bed
      t.integer :bath
      t.integer :surface
      t.integer :construction
      t.text :description
      t.integer :tax_month
      t.integer :price
      t.string :address
      t.string :locality
      t.string :class_energy
      t.string :transports
      t.string :view
      t.string :exposition
      t.string :floor
      t.string :floor_max
      t.boolean :elevator
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
