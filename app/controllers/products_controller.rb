class ProductsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @les_produits = Product.page(params[:page]).per(8)
  end

  def index_admin
    @les_produits = Product.all
  end

  def show

    @booking = Booking.new
    @product = Product.find(params[:id])
    @products =Product.categorie_id(@product.categorie.id).page(params[:page]).per(4)
    @price2 = @product.price * 1.2
    @price3 = @product.price * 1.4

  end

  def show_admin
     @product = Product.find(params[:id])
    @products =Product.categorie_id(@product.categorie.id).page(params[:page]).per(4)
    @price2 = @product.price * 1.2
    @price3 = @product.price * 1.4
  end

  def index_by_categorie
    @productby = Product.categorie_id(params[:id]).page(params[:page]).per(8)
  end

  def new
   @product = Product.new
   @categories = Categorie.all
   @zones = Zone.all


 end

  def create
    #@categories = Categorie.all
    product = Product.create(product_params)
    redirect_to "/products"
  end

  def update
    @product = Product.find(params[:id])
    Product.find(params[:id]).update title: params[:title], subtitle: params[:subtitle], description: params[:description], description2: params[:description2], description3: params[:description3], childs: params[:childs], lunch: params[:lunch], duration: params[:duration], jauge: params[:jauge], price: params[:price], categorie_id: params[:categorie_id], zone_id: params[:zone_id], photo: params[:photo]

    if @product.update title: params[:title], subtitle: params[:subtitle], description: params[:description], description2: params[:description2], description3: params[:description3], childs: params[:childs], lunch: params[:lunch], duration: params[:duration], jauge: params[:jauge], price: params[:price], categorie_id: params[:categorie_id], zone_id: params[:zone_id], photo: params[:photo]
      redirect_to "/index_admin/#{params[:id]}"
    else
      render 'show'
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to "/products"
  end



  def product_params
  params.require(:product).permit( :title, :subtitle, :description, :description2, :childs, :lunch, :jauge, :duration, :description3, :price, :zone_id, :categorie_id, photos: [])
end


end
