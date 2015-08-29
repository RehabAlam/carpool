json.array!(@carpoolingrequests) do |carpoolingrequest|
  json.extract! carpoolingrequest, :id, :email, :password, :user_id, :travel_id, :prefer_from, :prefer_to
  json.url carpoolingrequest_url(carpoolingrequest, format: :json)
end
