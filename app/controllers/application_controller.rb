class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  %w(Attendee Speaker Partner).each do |user|
    define_method "current_#{user.underscore}" do
      current_user if current_user.is_a?(user.constantize)
    end

    define_method "authenticate_#{user.underscore}" do
      |opts = {}| send("current_#{user.underscore}") || not_authorized
    end
  end
end
