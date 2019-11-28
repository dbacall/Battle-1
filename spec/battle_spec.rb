require_relative '../app.rb'

feature 'battle', type: :feature do
  scenario 'shows hit points of player 2' do
    visit '/'
    fill_in 'Player 1', with: 'Nancy'
    fill_in 'Player 2', with: 'Greg'
    click_on 'FIGHT!'
    expect(page).to have_content('Greg: 60HP')
  end
end