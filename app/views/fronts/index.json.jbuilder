json.array!(@fronts) do |front|
  json.extract! front, :id, :img1, :img2, :img3, :about, :company, :services, :dealer
  json.url front_url(front, format: :json)
end
