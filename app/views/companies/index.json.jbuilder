json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :phone, :fax, :email, :website
  json.url company_url(company, format: :json)
end
