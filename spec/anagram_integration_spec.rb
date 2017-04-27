require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagram', {:type => :feature}) do
  it('tells user if their word is an anagram') do
    visit('/')
    fill_in('anagrams1', :with => "bury")
    fill_in('anagrams2', :with => "ruby")
    click_button('click here')
    expect(page).to have_content("These words are anagrams")
  end
end
