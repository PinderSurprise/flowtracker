class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# laymans: before any action performed by controller, we need a authenticated user
  before_action :authenticate_user!
end
