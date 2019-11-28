def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Nancy'
  fill_in 'player2', with: 'Greg'
  click_on 'FIGHT!'
end
