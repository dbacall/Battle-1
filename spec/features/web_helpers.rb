def sign_in_and_play
  visit '/'
  fill_in 'Player 1', with: 'Nancy'
  fill_in 'Player 2', with: 'Greg'
  click_on 'FIGHT!'
end
