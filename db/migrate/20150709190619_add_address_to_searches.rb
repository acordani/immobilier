class AddAddressToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :address, :string
  end
end
