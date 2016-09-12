class TransactionsController < ApplicationController

	def create
		content = Content.find_by!(slug: params[:slug])
		purchase = content.purchases.create(
			amount: (content.price * 100).floor,
			email_client: current_user.email,
			email: content.user.email,
			stripe_token: params[:stripeToken]
			)
		purchase.running!

		if purchase.completed?

	  		redirect_to pickup_url(guid: purchase.guid)
	  	else

	  		redirect_to content_path(content), notice: @error
	  	end

	end

	def pickup
		@purchase = Purchase.find_by!(guid: params[:guid])
		@content = @purchase.content
	end

end