class PrototypesController < ApplicationController
  before_action :set_prototype,only: [:edit,:show]
  before_action :move_to_index, except: [:index, :show ,:search]

   def index
    @prototype = Prototype.all
   end

   def new
      @prototype = Prototype.new
   end

   def create 
      Prototype.create(prototype_params)
   end

   def destroy
      @prototype = Prototype.find(params[:id])
      @prototype.destroy
      redirect_to root_path
   end

   def edit
      @prototype = Prototype.find(params[:id]) 
   end

   def update
      prototype = Prototype.find(params[:id])
      prototype.update(prototype_params)
      redirect_to root_path
   end
   
   def show
      @prototype = Prototype.find(params[:id])
      @comment = Comment.new
      @comments = @prototype.comments.includes(:user)
    end


   private
   def prototype_params
      params.require(:prototype).permit(:image, :catch_copy,:title).merge(user_id: current_user.id)
   end
   
   def set_prototype
      @prototype = Prototype.find(params[:id])
   end

   def move_to_index
      unless user_signed_in?
      redirect_to action: :index
      end
   end
  end