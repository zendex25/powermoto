class Front < ActiveRecord::Base

	validates :img1, :img2, :img3, :about, :company, :services, :bottom, :dealer, :img4, :img5, :img6, :img7, :img8, :img9, :img10, :faq, :shop, :how, :contact, :store_loc, presence: true

	validates :img1, :img2, :img3, :img4, :img5, :img6, :img7, :img8, :img9, :img10, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}

belongs_to :support

end
