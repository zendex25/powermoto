class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart


  def index
  	@fronts = Front.all
  end

  def contact
  end

  def order
  end

  def faq
  end

  def shop
    @products = Product.order(:title)

  end

end
