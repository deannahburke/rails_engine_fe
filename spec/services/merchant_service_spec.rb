require 'rails_helper'

RSpec.describe MerchantService do
  describe 'merchants api endpoint' do
    it 'can retrieve data from merchants api' do
      json = MerchantService.get_merchants

      expect(json).to be_a(Array)
      expect(json[0]).to have_key(:id)
      expect(json[0]).to have_key(:type)
      expect(json[0]).to have_key(:attributes)
    end
  end

  describe 'merchant api endpoint' do
    it 'can retrieve one merchant' do
      json = MerchantService.get_one_merchant(3)

      expect(json).to be_a(Hash)
      expect(json).to have_key(:id)
      expect(json).to have_key(:type)
      expect(json).to have_key(:attributes)
      expect(json[:attributes]).to have_key(:name)
    end
  end
end
