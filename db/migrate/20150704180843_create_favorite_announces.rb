class CreateFavoriteAnnounces < ActiveRecord::Migration
  def change
    create_table :favorite_announces do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
