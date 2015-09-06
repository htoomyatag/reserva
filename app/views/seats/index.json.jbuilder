json.array!(@seats) do |seat|
  json.extract! seat, :id, :status, :seat_no
  json.url seat_url(seat, format: :json)
end
