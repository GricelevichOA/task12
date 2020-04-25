require 'faker'

Role.create(name: "Admin", is_admin: true, can_create: true, can_read: true, can_update: true, can_delete: true)
Role.create(name: "Viewer", is_admin: false, can_create: false, can_read: true, can_update: false, can_delete: false)


User.create(username: "Admin", email: "admin@mail.com", password: "password", role_id: 1)

10.times do
	User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password", role_id: 2)
end

20.times do
	Subject.create(topic: Faker::Lorem.sentence(word_count: 1), description: Faker::Lorem.sentence(word_count: 50))
end