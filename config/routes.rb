Rails.application.routes.draw do
  get "/places" => "places#inde_places"
  post "/place" => "places#new_place"
  delete "/delete" => "places#delete_place"
  patch "/update" => "places#update_place"
end
