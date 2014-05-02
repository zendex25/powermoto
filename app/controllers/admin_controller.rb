class AdminController < ApplicationController
  def index
  	@total_orders = Order.count
  	@supports = Support.all
  	@fronts = Front.all
  end


end
