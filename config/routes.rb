Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  constraints subdomain: 'test1' do
    get '/', to: 'sessions#first'
  end

  constraints subdomain: 'test2' do
    get '/', to: 'sessions#second'
  end
  
  get '/', to: 'sessions#none'
end
