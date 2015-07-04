# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



puts "Deleting old records..."
Property.destroy_all

puts "Creating property..."
Property.create(name: "Appartement")
Property.create(name: "Maison")
Property.create(name: "Local Commercial")


# puts "Creating Announces"
# Announce.create(title: "Belle Maison", bed: 3, bath: 1, surface: 120, construction: 1930, description: "Belle Maison sur Saint Maur Des Fossés")


puts "Done !"

# create_table "announces", force: :cascade do |t|
#     t.string   "title"
#     t.integer  "bed"
#     t.integer  "bath"
#     t.integer  "surface"
#     t.integer  "construction"
#     t.text     "description"
#     t.integer  "tax_month"
#     t.integer  "price"
#     t.string   "address"
#     t.string   "locality"
#     t.string   "class_energy"
#     t.string   "transports"
#     t.string   "view"
#     t.string   "exposition"
#     t.string   "floor"
#     t.string   "floor_max"
#     t.boolean  "elevator"
#     t.integer  "user_id"
#     t.datetime "created_at",            null: false
#     t.datetime "updated_at",            null: false
#     t.integer  "property_id"
#     t.float    "latitude"
#     t.float    "longitude"
#     t.string   "picture1_file_name"
#     t.string   "picture1_content_type"
#     t.integer  "picture1_file_size"
#     t.datetime "picture1_updated_at"
#     t.string   "picture2_file_name"
#     t.string   "picture2_content_type"
#     t.integer  "picture2_file_size"
#     t.datetime "picture2_updated_at"
#     t.string   "picture3_file_name"
#     t.string   "picture3_content_type"
#     t.integer  "picture3_file_size"
#     t.datetime "picture3_updated_at"
#     t.string   "picture4_file_name"
#     t.string   "picture4_content_type"
#     t.integer  "picture4_file_size"
#     t.datetime "picture4_updated_