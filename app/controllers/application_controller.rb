class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  after_action :verify_authorized, unless: :devise_controller?, :except => :index
  after_action :verify_policy_scoped, unless: :devise_controller?, :only => :index
end
