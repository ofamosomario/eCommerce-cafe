class SitesController < ApplicationController

  def index
  end

  def about
  end

  def show_case

    @products = Product.all.order(:id).limit(3)

  end

  def records

    @records = ProductsUser.joins(:product).joins(:user).where(user_id: current_user.id)

  end

end