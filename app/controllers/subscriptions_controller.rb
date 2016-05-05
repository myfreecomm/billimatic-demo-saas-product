class SubscriptionsController < ApplicationController
  def new
  end

  def create
    subscription = @client.subscriptions.create(
      plan_id: params[:plan_id],
      customer: {
        name: params[:customer_name],
        email: params[:customer_email],
        document: params[:customer_document],
        type: params[:customer_type],
        address_information: {
          address: params[:customer_address_information_address],
          number: params[:customer_address_information_number],
          complement: params[:customer_address_information_complement],
          district: params[:customer_address_information_district],
          zipcode: params[:customer_address_information_zipcode],
          city: params[:customer_address_information_city],
          state: params[:customer_address_information_state],
          ibge_code: params[:customer_address_information_ibge_code]
        }
      }
    )

    if subscription.plan.has_trial == true
      redirect_to root_path, notice: 'Assinatura de degustação criada com sucesso. A partir de agora, você pode começar a usar nosso produto.'
    else
      redirect_to billimatic_checkout_url(token: subscription.token)
    end
  rescue Billimatic::RequestError
    redirect_to root_path, alert: 'Houve um problema com o processamento de seu pedido. Por favor, tente de novo mais tarde.'
  end
end