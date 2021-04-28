class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_protfolio'
      else
        flash[:alert] = "Enter a valid ticker."
        redirect_to my_protfolio_path
      end
    else
      flash[:alert] = "Enter any ticker to search."
      redirect_to my_protfolio_path
    end
  end
end
