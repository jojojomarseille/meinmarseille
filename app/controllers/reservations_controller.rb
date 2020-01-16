class ReservationsController < ApplicationController

def new
   @reservation = Reservation.new
end


def create
    reservation = Reservation.create(reservation_params)
    redirect_to "/products"
end

def reservation_params
  params.require(:reservation).permit( :date_demande, :date_reservation, :nombre_participants, :status, :user, :product)
end

end

