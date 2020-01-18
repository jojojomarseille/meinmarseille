class BookingsController < ApplicationController

def new
   @booking = Booking.new
end

def index
  @bookings = Booking.page(params[:page]).per(12)
end

def destroy
    Booking.find(params[:id]).destroy
    redirect_to "/bookings"
  end

def create
    Booking.create comment: params[:comment], participants: params[:participants]
    redirect_to "/bookings"
end

def booking_params
  params.require(:booking).permit( :comment, :participants)
end

end
