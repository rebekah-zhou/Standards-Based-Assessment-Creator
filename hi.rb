require 'json'

file = File.read('client/src/db.json')
data_hash = JSON.parse(file)
pp data_hash