# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


response = HTTParty.get('http://restcountries.eu/rest/v1/all')
response.each do |country|
  Country.find_by_name(country['name']) ||
  Country.create( name: country['name'],
                  capital: country['capital'],
                  callingcode: country['callingcode'],
                  timezones: country['timezones'],
                  currency: country['currency'],
                  languages: country['languages'])
end
