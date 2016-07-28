module ApplicationHelper
  def checkout_link(label: 'aqui', token:)
    link_to(
      label, Billimatic::UrlHelpers.instance.checkout_url(token: token)
    )
  end

  def subscription_dashboard_link(label: 'aqui', token:)
    link_to(
      label,
      Billimatic::UrlHelpers.instance.subscription_dashboard_url(token: token)
    )
  end

  def plan_modification_link(label:, token:, plan_id:)
    link_to(
      label,
      Billimatic::UrlHelpers.instance.change_plan_url(token: token, plan_id: plan_id)
    )
  end
end
