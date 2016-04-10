json.array!(@client_companies) do |client_company|
  json.extract! client_company, :id, :name, :address, :phone, :fax, :email, :website
  json.url client_company_url(client_company, format: :json)
end
