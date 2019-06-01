# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

friends_list = ActiveSupport::JSON.decode(File.read('db/seeds/friend-list.json'))

friends_list.each do |contact|
  contact["first_name"] = contact.delete("firstname")
  contact["last_name"] = contact.delete("lastname")
  contact["fb_url"] = contact.delete("path")
  contact["pic_url"] = contact.delete("photo")
  contact["fb_id"] = contact.delete("uid")
  contact.delete("fullName")

  Contact.create!(contact)
end
