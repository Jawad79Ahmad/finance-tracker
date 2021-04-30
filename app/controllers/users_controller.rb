class UsersController < ApplicationController
  def my_protfolio
    @tracked_stock = current_user.stocks
  end
  def my_friends
    @friends = current_user.friends
  end
  def search
    if params[:friend].present?
      @friends = current_user.friends
      @friend = User.search(params[:friend])
      @friend = current_user.except_current_user(@friend)
      if @friend
        render 'users/my_friends'
      else
        flash.now[:alert] = "Enter a valid username or email."
        render my_friends_path
      end
    else
      flash.now[:alert] = "Enter a username or email to search friend"
      render my_friends_path
    end
  end
  def show

  end
end
