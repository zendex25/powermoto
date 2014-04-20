class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart

  
  
  def index
  	@fronts = Front.all

  end

  def tire
    @products = Product.where(:category => 'Tire')
  end

  def helmet
    @products = Product.where(:category => 'Helmet')
  end

  def part
    @products = Product.where(:category => 'Part')
  end

  def accessory
    @products = Product.where(:category => 'Accessory')
  end

  def battery
    @products = Product.where(:category => 'Battery')
  end

  def oillube
    @products = Product.where(:category => 'Oil/Lube')
  end

  def other
    @products = Product.where(:category => 'Other')
  end

  def order
  end

  def faq
  end

  def shop
    @products = Product.order(:title)

  end

end
