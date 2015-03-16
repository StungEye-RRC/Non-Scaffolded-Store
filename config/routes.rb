Rails.application.routes.draw do
  get 'wootly_grins' => 'products#index'
  get 'products' => 'products#index'
end
