class SubscribersController < ApplicationController
	def create
		@subscriber = Post.find(params[:post_id])
		@subscriber = Post.Subscriber.create(subscriber_params)
			
		 respond_to do |format|
	      if @subscriber.save
	        format.html { redirect_to new_subscriber_path, notice: 'Subscribered successfully.' }
	        format.json { render :new, status: :created, location: new_subscriber_path }
	      else
	        format.html { render action: :new }
	        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Post.Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      params.require(:subscriber).permit(:subemail, :post_id)
    end
end