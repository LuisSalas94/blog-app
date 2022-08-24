require 'rails_helper'

RSpec.describe 'User', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      first_user = User.create(name: "Bob", image: "https://icon-library.com/images/person-png-icon/person-png-icon-29.jpg", bio: "Peruvian Chef.", posts_counter: 0)
      visit root_path
      expect(page).to have_content('Bob')
    end
  end
end