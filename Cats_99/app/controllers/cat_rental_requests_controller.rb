# cat_rental_requests GET   /cat_rental_requests(.:format)          cat_rental_requests#index
#                         POST  /cat_rental_requests(.:format)          cat_rental_requests#create
#  new_cat_rental_request GET   /cat_rental_requests/new(.:format)      cat_rental_requests#new
# edit_cat_rental_request GET   /cat_rental_requests/:id/edit(.:format) cat_rental_requests#edit
#      cat_rental_request GET   /cat_rental_requests/:id(.:format)      cat_rental_requests#show
#                         PATCH /cat_rental_requests/:id(.:format)      cat_rental_requests#update
#                         PUT   /cat_rental_requests/:id(.:format)      cat_rental_requests#update


class CatRentalRequestsController < ApplicationController

  def index
    @requests = CatRentalRequest.all
    render :index
  end

  def show
    @request = CatRentalRequest.find_by(id: params[:id])
  end

  def new
    @request = CatRentalRequest.new
    render :new
  end

  def create
    @request = CatRentalRequest.new(request_param)
    if @request.save
      redirect_to cat_rental_request_url(@request)
    else
      render :new
    end
  end

  private

  def request_param
    params.require(:request).permit(:cat_id, :start_date, :end_date)
  end
end
