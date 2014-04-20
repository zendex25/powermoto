json.array!(@supports) do |support|
  json.extract! support, :id, :name, :body, :email, :contact
  json.url support_url(support, format: :json)
end
