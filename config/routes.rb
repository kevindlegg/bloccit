Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact.html.erb'

  root 'welcome#index'
end
