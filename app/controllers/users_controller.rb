class UsersController < ApplicationController
  include SessionsHelper
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  
  def destroy
      User.find(params[:id]).destroy
      flash[:success] = "Utilisateur supprime."
      redirect_to users_path
    end
  
  def index
   @users = User.paginate(page: params[:page])
  end
  
  def edit
   @user = User.find(params[:id])
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
      @user.admin = false
      if @user.save
        redirect_to root_url, :notice => "Bienvenue!"
      else
        render "new"
      end
    end
    
    def signed_in_user
          unless signed_in?
            store_location
            redirect_to signin_path, notice: "Veuillez vous connecter."
          end
    end
       
    def correct_user
             @user = User.find(params[:id])
             redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
          redirect_to(root_path) unless current_user.admin?
    end
end
