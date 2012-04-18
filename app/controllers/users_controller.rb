class UsersController < ApplicationController
  include SessionsHelper
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy, :following, :followers,:pesees]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  
  
  def repas
   
    @user = User.find(params[:id])
    @repas = @user.repas.paginate(page: params[:page])
  end
  
  
  def pesees
    @title = "Pesees"
    @user = User.find(params[:id])
    @pesees = @user.pesees.paginate(page: params[:page])
  end
  
  def activites
    @title = "Activites"
    @user = User.find(params[:id])
    @activites = @user.activites.paginate(page: params[:page])
  end
  
  
  def following
      @title = "Following"
      @user = User.find(params[:id])
      @users = @user.followed_users.paginate(page: params[:page])
      render 'show_follow'
    end

    def followers
      @title = "Followers"
      @user = User.find(params[:id])
      @users = @user.followers.paginate(page: params[:page])
      render 'show_follow'
    end
  
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
     @user = User.find(params[:id])
  end
  
  def new
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      @user.admin = false
      if @user.save
        session[:user_id] = @user.id
        redirect_back_or @user
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
