class UsersController < ApplicationController
  before_action :set_plans

  def show
    user = User.find(current_user.id)
    @subscription = @client.subscriptions.show(token: user.token)
  end
end
