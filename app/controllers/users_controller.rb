class UsersController < ApplicationController
  def show
    user = User.find(current_user.id)
    @subscription = @client.subscriptions.show(token: user.token)
  end
end
