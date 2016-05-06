class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_billimatic_client

  helper_method :current_user, :billimatic_checkout_url,
                :billimatic_subscription_dashboard_url

  def set_billimatic_client
    @client ||= Billimatic.client('4d34754cd68bbe74d725f6c8c9f6b48f')
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def billimatic_checkout_url(token:)
    "http://sandbox.billimatic.com.br/subscriptions/checkout/#{token}"
  end

  def billimatic_subscription_dashboard_url(token:)
    "http://sandbox.billimatic.com.br/subscriptions/#{token}/dashboard"
  end
end
