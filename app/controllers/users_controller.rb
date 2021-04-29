class UsersController < ApplicationController
  def my_protfolio
    @tracked_stock = current_user.stocks
  end
end
