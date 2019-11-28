require_relative '../../app.rb'

feature 'homepage', type: :feature do
  scenario 'enter player names and see it on screen' do
    sign_in_and_play
    expect(page).to have_content('Nancy VS Greg')
  end
end
