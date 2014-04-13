class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart


  def index
  	
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
