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
  
 end
