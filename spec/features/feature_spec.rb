describe Battle do

  feature 'Player details' do
    scenario 'entering names' do
      sign_in_and_play
      expect(page).to have_content 'Emily vs. Alice'
    end
  end

  feature 'Player hit points' do
    scenario 'view hit points' do
      sign_in_and_play
      expect(page).to have_content 'Emily: 10HP'
    end
  end

  feature 'Attack player' do
    scenario 'attack and get confirmation' do
      sign_in_and_play
      click_button 'Attack!'
      expect(page).to have_content 'You have attacked Alice'
    end
  end

end
