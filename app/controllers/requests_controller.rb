class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = current_user.requests.new(request_params)
    @request.sender_id = current_user
    @request.status = :pending
    if @request.save
      redirect_to requests_path, notice: "Request sent successfully"
    else
      redirect_to requests_path, alert: "Failed to send request"
    end
  end

  def index
    @requests = current_user.requests.pending.where(recipient_id: current_user)
  end

  def update
    @request = current_user.requests.find(params[:id])
    if @request.update(request_params)
      redirect_to requests_path, notice: "Request updated successfully"
    else
      redirect_to requests_path, alert: "Failed to update request"
    end
  end

  private

  def request_params
    params.require(:request).permit(:message, :recipient_id, :sender_id, :status)
  end
end
