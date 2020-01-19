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

def booking_by_users
  @resa = Booking.all
  @booking_by_user = @resa.where(user: current_user.id)
end

def create
    Booking.create comment: params[:comment], participants: params[:participants], status: params[:status], user: current_user
    redirect_to "/bookings"
end

def update
    Booking.find(params[:id]).update  status: params[:status]
    redirect_to "/bookings"
  end

def booking_params
  params.require(:booking).permit( :comment, :participants)
end

end
