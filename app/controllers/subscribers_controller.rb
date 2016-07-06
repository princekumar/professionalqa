class SubscribersController < ApplicationController
	def new
		@subscriber = Subscriber.new
	end

	def create
		@subscriber = Subscriber.new(params[:subscriber])
		@subscriber.request = request
		@subscriber.deliver
	end
end
