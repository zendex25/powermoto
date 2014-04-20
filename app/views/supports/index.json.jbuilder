json.array!(@supports) do |support|
  json.extract! support, :id, :name, :title, :body, :email, :contact
  json.url support_url(support, format: :json)
end
