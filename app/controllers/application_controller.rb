class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :set_layout

  protected

  def set_layout
    unless current_user.present?
      'login'
    end
  end
end
