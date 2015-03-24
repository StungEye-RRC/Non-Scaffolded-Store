class ProductsController < ApplicationController
  before_action :load_product_by_id, only: [:show, :update, :edit, :destroy]

  def index # The index action
    # Use the Product model to load all products.
    @products = Product.all
  end
  # The associated view app/views/products/index.html.erb is auto-loaded.
  # The view gets access to all the action's instance variables.
  
  def show # The show action
  end
  # The associated view app/views/products/show.html.erb is
  # auto-loaded. This view gets access to all instance vars.
  
  def new
    @product = Product.new
  end
  # auto-loads: app/views/products/new.html.erb
  
  def create
    @product = Product.new(whitelisted_params)
    
    if (@product.save)
      # redirect_to product_path(@product.id) # Redirect to the show action for this product
      redirect_to @product
    else
      render :new
    end
  end
  # No associated view. no: app/views/products/create.html.erb
  # If the product saves we redirect to the show
  # If the validations fail we render the view associated with the new action.
  
  def edit
  end
  
  def update
    if (@product.update_attributes(whitelisted_params))
      redirect_to @product
    else
      render :edit
    end
  end
  # There is no app/views/products/update.html.erb
  # We either redirect on success or render the edit view on failure.
  
  def destroy
    @product.destroy
    redirect_to root_path
  end
  
  private
  def whitelisted_params
    params.require(:product).permit(:name, :description, :price, :image_filename)
  end
  
  def load_product_by_id
    @product = Product.find(params[:id])
  end
end












