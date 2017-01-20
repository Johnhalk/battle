require 'spec_helper'

feature 'switching turns' do
  scenario "When game starts player 1 is the active player" do
    sign_in_and_play
    expect(page).to have_content('John\'s turn !')
  end

  scenario "After player 1 attacks player 2 becomes the active player" do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content('Mica\'s turn !')
  end
end
