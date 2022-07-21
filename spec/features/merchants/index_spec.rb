require 'rails_helper'

RSpec.describe 'Merchants index', type: :feature do
  it 'displays merchants page' do
    visit '/merchants'

    expect(page).to have_content("Merchants")
  end
end
