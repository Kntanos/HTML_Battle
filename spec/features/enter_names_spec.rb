feature 'Enter names' do
  scenario 'Submitting names' do
    sign_in_and_play

    # save_and_open_page

    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end

feature "View Hit points" do
  scenario 'see Player 2 Hit points' do
    sign_in_and_play

    expect(page).to have_content 'Mittens: 60HP'
  end
end

feature "Attacking" do
  scenario 'attacking Player 2' do
    sign_in_and_play
    click_link 'Attack!'

    expect(page).to have_content 'Charlotte attacks Mittens'

  end

end
