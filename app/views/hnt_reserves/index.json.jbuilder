json.array!(@hnt_reserves) do |hnt_reserf|
  json.extract! hnt_reserf, :id, :restaurant_name, :customer_name, :reserve_date, :reserve_time, :number_of_ppl, :phone
  json.url hnt_reserf_url(hnt_reserf, format: :json)
end
