require('rspec')
require('pry')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require("./lib/anagram")

get('/') do
  erb(:index)
end

get("/result") do
  @output = params.fetch('input').anagram()
  erb(:result)
end
