class Front < ActiveRecord::Base

	validates :img1, :img2, :img3, :about, :company, :services, :dealer, presence: true

	validates :img1, :img2, :img3, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}

end
