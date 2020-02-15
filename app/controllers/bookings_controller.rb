class BookingsController < ApplicationController


def new
    # we need @product in our `simple_form_for`
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

def index
  @bookings = Booking.page(params[:page]).per(12)
end

def destroy
    Booking.find(params[:id]).destroy
    redirect_to "/bookings"
  end

def booking_by_users
  @resa = Booking.all
  @booking_by_user = @resa.where(user: current_user.id)
end

#def create
    #Booking.create comment: params[:comment], participants: params[:participants], status: params[:status], date: params[:date], user: current_user, product_id: params[:product_id]
    #redirect_to "/bookings"
#end

def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @product = Product.find(params[:product_id])
    @booking.product = @product
    @booking.user = current_user
    @booking.save
    redirect_to booking_by_user_path
    BookingMailer.creation_confirmation(@booking).deliver_now
end

def update
    Booking.find(params[:id]).update  status: params[:status]
    redirect_to "/bookings"
  end

private

def booking_params
  params.permit( :comment, :participants, :status, :price, :date, :sku, :user_id, :product_id, :childs )
end

end
