class ShopsController < ApplicationController

  def api1
    books = Book.all.order(id: :desc)
    render json: books
  end

  def api2
    result = Book.create(
      name: params[:name],
      price: params[:price],
      image: ActionController::Base.helpers.asset_path(params[:image]),
      pubdate: Date.today.to_s
    )
    render json: result
  end
end
