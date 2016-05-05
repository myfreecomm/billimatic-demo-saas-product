class PlansController < ApplicationController
  def index
    @plans = @client.plans.list(organization_id: 486)
  end
end
