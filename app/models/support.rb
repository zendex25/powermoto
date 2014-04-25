class Support < ActiveRecord::Base



validates :name, :title, :body, :email, :contact, presence: true
validates :contact, format: { with: /\d{4}-\d{3}-\d{4}/ }

def index
	@fronts = Front.all
end

end
