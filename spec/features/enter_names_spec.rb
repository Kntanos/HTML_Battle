feature 'Enter names' do
  scenario 'Submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end

feature "View Hit points" do
  scenario 'see Player 2 Hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'

    expect(page).to have_content 'Mittens: 60HP'
  end
end