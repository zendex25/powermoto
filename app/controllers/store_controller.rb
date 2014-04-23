class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart

  
  
  def index
  	@fronts = Front.all
  end


  def tire
    @fronts = Front.all
    @products = Product.where(:category => 'Tire')
  end

  def helmet
    @fronts = Front.all
    @products = Product.where(:category => 'Helmet')
  end

  def part
    @fronts = Front.all
    @products = Product.where(:category => 'Part')
  end

  def accessory
    @fronts = Front.all
    @products = Product.where(:category => 'Accessory')
  end

  def battery
    @fronts = Front.all
    @products = Product.where(:category => 'Battery')
  end

  def oillube
    @fronts = Front.all
    @products = Product.where(:category => 'Oil/Lube')
  end

  def other
    @fronts = Front.all
    @products = Product.where(:category => 'Other')
  end

  def order
    @fronts = Front.all
  end

  def faq
    @fronts = Front.all
  end

  def shop
    @fronts = Front.all
    @products = Product.order(:title)

  end

  def contact
    @fronts = Front.all
  end

end
