require_relative '../app.rb'

describe 'homepage', type: :feature do
  it 'returns a message' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
