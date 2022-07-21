require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'creates merchant poro from get merchants call' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a(Array)
  end
end
