class UsersController < ApplicationController
  
  def edit
    @user = current_user   
  end
  
  def update
     @user = User.find(params[:id])
     if @user.update_attributes(params[:user])
       flash[:success] = "Profil mis a jour"
       redirect_to @user
     else
       render 'edit'
     end
   end
  
  def show
    @user = current_user
  end
  
  def new
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to root_url, :notice => "Signed up!"
      else
        render "new"
      end
    end
end
