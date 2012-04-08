class SessionsController < ApplicationController
    def new
    end

    def create
      user = User.find_by_email(params[:session][:email])
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to user, :notice => "Bienvenue!"
        else
          flash.now[:error] = "email ou mot de passe non valide"
          render "new"
        end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Au revoir"
    end
end
