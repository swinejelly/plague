require "net/ldap"
require "yaml"

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  def authenticate
    if Rails.application.config.use_webauth
      head :forbidden
    else
      session[:username] = "swinejelly" unless session[:username]
    end
    logger.info("Authenticating with LDAP Server")
    #Load LDAP credentials
    info = YAML.load_file Rails.root.join("config", "ldap.yml").to_s
    #Establish connection
    ldap = Net::LDAP.new
    ldap.host = info["host"]
    ldap.auth info["user"], info["password"]
    if ldap.bind 
      logger.info("Bound to LDAP server")
      @user = ldap.search(:base => info['userbase'], :filter => Net::LDAP::Filter.eq("uid", session[:username])).first
      logger.info("Retrieved user instance: " + @user.to_s)
      @users = ldap.search(:base => info['userbase'], :filter => Net::LDAP::Filter.eq("onfloor", "1"), :attributes => ["roomNumber", "uid"])
    else
      logger.warn("Failed to bind to LDAP server")
    end
    return true
  end

  def implied_redirect()
    redirect_to params[:to] if params[:to]
  end
end
