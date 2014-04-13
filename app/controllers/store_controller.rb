class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  end

  def contact
  end

  def order
  end

  def faq
  end

end
