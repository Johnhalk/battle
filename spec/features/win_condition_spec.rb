require 'spec_helper'

feature 'allows a player to win' do
  scenario 'when opponents health is 0 the player wins the game' do
    sign_in_and_play
    11.times { click_buttons }
    expect(page).to have_content('John wins!')
  end
end



def click_buttons
  click_link('Attack')
end
