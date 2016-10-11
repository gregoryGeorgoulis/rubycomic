Rails.application.routes.draw do
  root 'titles#main'
  resources :patrons
  resources :comics
  devise_for :users

end
#       Prefix Verb   URI Pattern                    Controller#Action
#                     root GET    /                              titles#main
#                  patrons GET    /patrons(.:format)             patrons#index
#                          POST   /patrons(.:format)             patrons#create
#               new_patron GET    /patrons/new(.:format)         patrons#new
#              edit_patron GET    /patrons/:id/edit(.:format)    patrons#edit
#                   patron GET    /patrons/:id(.:format)         patrons#show
#                          PATCH  /patrons/:id(.:format)         patrons#update
#                          PUT    /patrons/:id(.:format)         patrons#update
#                          DELETE /patrons/:id(.:format)         patrons#destroy
#                   comics GET    /comics(.:format)              comics#index
#                          POST   /comics(.:format)              comics#create
#                new_comic GET    /comics/new(.:format)          comics#new
#               edit_comic GET    /comics/:id/edit(.:format)     comics#edit
#                    comic GET    /comics/:id(.:format)          comics#show
#                          PATCH  /comics/:id(.:format)          comics#update
#                          PUT    /comics/:id(.:format)          comics#update
#                          DELETE /comics/:id(.:format)          comics#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
