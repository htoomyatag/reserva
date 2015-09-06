json.array!(@orders) do |order|
  json.extract! order, :id, :name, :res_time, :res_date, :number_of_guest, :special_request, :contact_number, :email
  json.url order_url(order, format: :json)
end
