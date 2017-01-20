require 'spec_helper'

feature "View hit points" do
  scenario "player 1 can see player 2's" do
    sign_in_and_play
    expect(page).to have_content('Mica: 60HP')
  end
end

feature "Reduce hit points" do
  scenario "player 1 can attack and reduce hit points of player 2" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content ('Mica: 50HP')
  end
end
