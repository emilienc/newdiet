class SessionsController < ApplicationController
    def new
    end

    def create
      user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to root_url, :notice => "Bienvenue!"
        else
          flash.now.alert = "email ou mot de passe non valide"
          render "new"
        end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Au revoir"
    end
end
