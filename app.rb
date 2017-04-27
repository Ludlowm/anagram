require('rspec')
require('./lib/anagram')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
 first_input = params.fetch('anagrams1')
 second_input = params.fetch('anagrams2')
 @output = first_input.anagram?(second_input)
 erb(:result)
end
