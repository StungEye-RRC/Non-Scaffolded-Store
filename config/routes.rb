Rails.application.routes.draw do
  # A HTTP GET request to /products will run the index action of the
  # products controller.
  
  # CREATE
  get  'products/new' => 'products#new'    # Show a new product form.
  post 'products'     => 'products#create' # Create the new product.
  
  # READ
  get  'products'     => 'products#index'  # Show all products
  get  'products/:id' => 'products#show', as: 'product'   # Show a member of products (id)
  
  # UPDATE
  # DESTROY
end
