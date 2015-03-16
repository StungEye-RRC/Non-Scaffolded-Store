class ProductsController < ApplicationController
  def index # The index action
    # Use the Product model to load all products.
    @products = Product.all
  end
  # The associated view app/views/products/index.html.erb is auto-loaded.
  # The view gets access to all the action's instance variables.
end
