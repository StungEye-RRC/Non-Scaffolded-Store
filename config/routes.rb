Rails.application.routes.draw do
  # A HTTP GET request to /products will run the index action of the
  # products controller.
  
  # HTTP Verbs
  # GET
  # POST
  # PATCH / PUT
  # DELETE
  
  root to: 'products#index'
  
  # The following single line would build all of our RESTful routes.
  # resources :products, constraints: { id: /\d+/ }
  
  # CREATE
  get  'products/new' => 'products#new', as: 'new_product' # Show a new product form.
  post 'products'     => 'products#create' # Create the new product.
  
  # READ
  get  'products'     => 'products#index' # Show all products
  get  'products/:id' => 'products#show', as: 'product', id: /\d+/ # Show a member of products (id)
  
  # UPDATE
  get 'products/:id/edit' => 'products#edit', as: 'edit_product', id: /\d+/
  patch 'products/:id' => 'products#update', id: /\d+/
  
  # DESTROY
  delete 'products/:id' => 'products#destroy', id: /\d+/
end
