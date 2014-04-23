class Support < ActiveRecord::Base



validates :name, :title, :body, :email, :contact, presence: true

def index
	@fronts = Front.all
end

end
