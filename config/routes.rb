Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :first_lines
      resources :later_lines
    end
  end
end
