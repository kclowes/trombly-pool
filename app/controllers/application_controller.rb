class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  after_action :verify_authorized, unless: :devise_controller?, :except => :index
end
