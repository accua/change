require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change path', {:type => :feature}) do
  it('processes the user entry and returns change left over from transaction') do
    visit('/')
    fill_in('price', :with => '2.44')
    fill_in('cash', :with => '5.00')
    click_button('Go!')
    expect(page).to have_content("We are now out of quarters, you will recieve the rest of your change in other denominations as available. 8 quarter(s) and 5 dime(s) and 1 nickel(s) and 1 pennie(s)")
  end
end
