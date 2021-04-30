class UsersController < ApplicationController
  def my_protfolio
    @tracked_stock = current_user.stocks
  end
  def my_friends
    @my_friend = current_user.friends
  end
end
