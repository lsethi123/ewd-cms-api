Rails.application.routes.draw do
  namespace :api do
    resources :websites, except: [:new, :edit]
    resources :image_posts, except: [:new, :edit]
    resources :conversations, except: [:new, :edit]
    resources :messages, except: [:new, :edit]
    resources :image_products, except: [:new, :edit]
    resources :category_products, except: [:new, :edit]
    resources :categories, except: [:new, :edit]
    resources :tag_posts, except: [:new, :edit]
    resources :image_sliders, except: [:new, :edit]
    resources :sliders, except: [:new, :edit]
    resources :pages, except: [:new, :edit]
    resources :images, except: [:new, :edit]
    resources :checklists, except: [:new, :edit]
    resources :todos, except: [:new, :edit]
    resources :boards, except: [:new, :edit]
    resources :events, except: [:new, :edit]
    resources :billing_addresses, except: [:new, :edit]
    resources :shipping_addresses, except: [:new, :edit]
    resources :line_items, except: [:new, :edit]
    resources :orders, except: [:new, :edit]
    resources :posts, except: [:new, :edit]
    resources :products, except: [:new, :edit]
    resources :tags, except: [:new, :edit]
    resources :companies, except: [:new, :edit]
    resources :employees, except: [:new, :edit]
    resources :opportunities, except: [:new, :edit]
    resources :tasks, except: [:new, :edit]
    resources :teams, except: [:new, :edit]
    resources :users, only: [:index, :create, :show, :update, :destroy]
    resource :sessions, only: [:create, :destroy]
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
