class AuthController < ApplicationController
  def change
    unless Rails.application.config.use_webauth
      session[:username] = params[:newusername]
      redirect_to :back
    else
      head :forbidden
    end
  end
end
