Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users do
        get :all_active, :on => :collection
        get :all_inactive, :on => :collection
        get :all_by_rol_id, :on => :collection
        get :all_by_permission_id, :on => :collection
      end
    end
  end
end
