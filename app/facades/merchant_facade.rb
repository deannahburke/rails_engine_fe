class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_merchants
    json.map { |data| Merchant.new(data) }
  end

  def self.one_merchant(id)
    json = MerchantService.get_one_merchant(id)
    merchant = Merchant.new(json)
  end
end
