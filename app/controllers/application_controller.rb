class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  after_action :verify_authorized, unless: :devise_controller?, :except => :index
  after_action :verify_policy_scoped, unless: :devise_controller?, :only => :index

  private

  def after_sign_in_path_for(user)
    games_path
  end

  def after_register_path_for(user)
    games_path
  end
end
