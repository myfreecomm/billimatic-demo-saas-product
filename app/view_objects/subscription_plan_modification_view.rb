class SubscriptionPlanModificationView
  def initialize(subscription, plan)
    @subscription, @plan = subscription, plan
  end

  def label
    if upgrade?
      'Fazer upgrade'
    elsif downgrade?
      'Fazer downgrade'
    elsif trial? or different_billing_period?
      'Alterar plano'
    end
  end

  private

  def upgrade?
    @subscription.status == 'established' &&
      @plan.price > @subscription.plan.price &&
      @plan.billing_period == @subscription.plan.billing_period
  end

  def downgrade?
    @subscription.status == 'established' &&
      @plan.price < @subscription.plan.price &&
      @plan.billing_period == @subscription.plan.billing_period
  end

  def different_billing_period?
    @plan.billing_period != @subscription.plan.billing_period
  end

  def trial?
    @subscription.status == 'trial'
  end
end
