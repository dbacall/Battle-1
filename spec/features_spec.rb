require_relative '../app.rb'

describe 'homepage', type: :feature do
  it 'enter player names and see it on screen' do
    visit '/'
    fill_in 'Player 1', with: 'Nancy'
    fill_in 'Player 2', with: 'Greg'
    click_on 'FIGHT!'
    expect(page).to have_content('Nancy VS Greg')
  end
end
