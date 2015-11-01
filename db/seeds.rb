# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

make = Make.create([{ name: 'Hart'}])
make = Make.create([{ name: 'Jewell'}])
make = Make.create([{ name: 'Kelbly'}])
make = Make.create([{ name: 'Maddco'}])
make = Make.create([{ name: 'Barnard'}])
make = Make.create([{ name: 'Nightforce'}])
make = Make.create([{ name: 'Krieger'}])
make = Make.create([{ name: 'Shilen'}])
make = Make.create([{ name: 'McMillan'}])
make = Make.create([{ name: 'Leupold'}])
make = Make.create([{ name: 'Searcy'}])
make = Make.create([{ name: 'Remington'}])
make = Make.create([{ name: 'MAB'}])
make = Make.create([{ name: 'Sprinter'}])
make = Make.create([{ name: 'BAT Machine'}])
make = Make.create([{ name: 'Anschutz'}])
make = Make.create([{ name: 'General'}])
make = Make.create([{ name: 'Hakko'}])
make = Make.create([{ name: 'Harrells'}])
make = Make.create([{ name: 'Barts'}])

make = WhenDue.create([{ name: '1 Month'}])
make = WhenDue.create([{ name: '3 Months'}])
make = WhenDue.create([{ name: '6 Months'}])
make = WhenDue.create([{ name: 'Available'}])
make = WhenDue.create([{ name: "Don't hold your breath"}])
make = WhenDue.create([{ name: 'Imminent'}])
