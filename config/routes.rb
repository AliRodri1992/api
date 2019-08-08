Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users do
        get :all_active, :on => :collection
      end
    end
  end
end
