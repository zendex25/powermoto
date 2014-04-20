class AdminController < ApplicationController
  def index
  	@total_orders = Order.count
  	@supports = Support.all
  end
end
