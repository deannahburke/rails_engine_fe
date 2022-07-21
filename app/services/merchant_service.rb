class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants
    response = conn.get("merchants")
    results = get_json(response)
    results[:data]
  end

  def self.get_one_merchant(id)
    response = conn.get("merchants/#{id}")
    results = get_json(response)
    results[:data]
  end
end
