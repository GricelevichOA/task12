# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: "Admin", is_admin: true, can_create: true, can_read: true, can_update: true, can_delete: true)
Role.create(name: "Viewer", is_admin: false, can_create: false, can_read: true, can_update: false, can_delete: false)

