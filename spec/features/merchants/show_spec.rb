require 'rails_helper'

RSpec.describe 'Merchant show', type: :feature do
  it 'displays merchants page' do
    visit '/merchants/3'
    
    expect(page).to have_content("Willms and Sons")
  end
end
