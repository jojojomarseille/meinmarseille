def create
    #@categories = Categorie.all
    reservation = Reservation.create(reservation_params)
    redirect_to "/products"
  end

