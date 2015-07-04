class DropFavoriteAnnouncesTable < ActiveRecord::Migration
  def up
    drop_table :favorite_announces
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
