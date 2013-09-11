json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :correspondence, :note
  json.url customer_url(customer, format: :json)
end
