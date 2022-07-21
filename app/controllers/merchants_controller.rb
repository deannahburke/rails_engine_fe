class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    merchant_id = (params[:id])
    @merchant = MerchantFacade.one_merchant(merchant_id)
  end
end
