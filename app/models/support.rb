class Support < ActiveRecord::Base

validates :name, :title, :body, :email, :contact, presence: true

end
