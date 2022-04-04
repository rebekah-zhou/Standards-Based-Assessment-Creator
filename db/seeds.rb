# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

puts 'seeding! 🌱 🌱 🌱 '


file = File.read('client/src/db.json')
data_hash = JSON.parse(file)

data_hash['data']['standards'].map do |std, v| 
    pp std['statementLabel']
    # case std['statementLabel']
    # when "Course"
    #     puts 'hi'
    # when "Conceptual Category"
    #     puts 'yo yo yo'
    # end
end




puts 'done seeding! 🌱 🌱 🌱'