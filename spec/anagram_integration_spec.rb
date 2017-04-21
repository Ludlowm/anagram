require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('word to palindrome', {:type => :feature}) do

  it('processes the words the user entered to find if they are an anagram/palindrome or neither') do
    visit('/')
    fill_in('input', :with => 'ruby bury')
    click_button('Go!')
    expect(page).to have_content('These words are anagrams')

  end
end
