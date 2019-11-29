require_relative '../../app.rb'

feature 'attack', type: :feature do
  scenario "confirms the attack" do
    sign_in_and_play
    click_on 'Attack!'
    expect(page).to have_content('Nancy attacked Greg!')
  end

  scenario "should take 10HP off player 2's health" do
    sign_in_and_play
    click_on 'Attack!'
    click_on 'Next move'
    expect(page).to have_content "Greg: 50HP"
  end
end
