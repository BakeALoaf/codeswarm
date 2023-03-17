class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = current_user.sent_requests.build(request_params)

    if @request.save
      redirect_to requests_confirmation_path
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:request).permit(:receiver_id, :message)
  end
end
