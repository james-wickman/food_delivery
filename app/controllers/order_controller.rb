class OrderController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @order = Order.find(1)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
