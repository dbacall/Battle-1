require_relative '../../app.rb'

feature 'battle', type: :feature do
  scenario 'shows hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content('Greg: 60HP')
  end
end
