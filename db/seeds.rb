# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.create(email: 'emilien',password: 'admin', password_confirmation: 'admin',admin: 'true')
  ActiviteGenre.create(name: 'velo')
  ActiviteGenre.create(name: 'marche')
  ActiviteGenre.create(name: 'course')
  ActiviteGenre.create(name: 'fitness')
