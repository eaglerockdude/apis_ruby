#webapi.rb
require 'sinatra'
require 'json'

users = {
    'thibault': { first_name: 'Thibault', last_name: 'Denizet', age: 25 },
    'simon':    { first_name: 'Simon', last_name: 'Random', age: 26 },
    'john':     { first_name: 'John', last_name: 'Smith', age: 28 },
    'ken':     {first_name: 'Ken', last_name: 'McFadden', age: 63}
}

before do
  content_type 'application/json'
end

get '/' do
  "Dude, where's my car?"
end

get'/users' do
  users.map { |name, data| data.merge(id: name) }.to_json
end

get '/' do
  "Dude..where's my car? "
end