# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "user@user.com", password: "password")
user = User.first
for i in 0..20
  note = Note.new
  note.subject = "Note #{i}"
  note.body = "This is note #{i} created for the first user"
  note.user = user
  note.category_id = user.categories.first.id

  note.save!
end

for i in 0..10
  note = Note.new
  note.subject = "Note #{i}"
  note.body = "This is note #{i} created for the first user"
  note.user = user
  note.category_id = user.categories.second.id

  note.save!
end

for i in 0..5
  note = Note.new
  note.subject = "Note #{i}"
  note.body = "This is note #{i} created for the first user"
  note.user = user
  note.category_id = user.categories.third.id

  note.save!
end
