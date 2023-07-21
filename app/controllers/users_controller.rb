class UsersController < ApplicationController
  def show
      user = User.find(params[:id])
      @user_profile = user.profile
      @user_occupation = user.occupation
      @user_position = user.position
      @user = user.name
      
      @prototypes = user.prototypes
  end
private
  #  def user_profile 
  #     @user_profile = user.profile
  #  end
  #  def user_occupation
  #   @user_occupation = user.occupation
  #  end
  #  def user_position
  #   @user_position = user.position
  #  end
 end
