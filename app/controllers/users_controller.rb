class UsersController < ApplicationController

  def edit    
  end

  def update
    current_user.update(user_params)

    if current_user.updated
      redirect_to root_path
    elsif 
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
