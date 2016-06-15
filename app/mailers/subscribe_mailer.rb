class SubscribeMailer < ActionMailer::Base
	default from: "buzz@professionalqa.com"

	def new_subscriber(subscriber) 
		@subscriber = subscriber
		mail(to: @subscriber.subsemail, subject: @subscriber.subsemail + ' Subscribing Notification recieved' )
	end
end