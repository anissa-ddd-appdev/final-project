Rails.application.routes.draw do
  # Routes for the Favorite resource:

  # CREATE
  match("/new_favorite_form", { :controller => "favorites", :action => "blank_form", :via => "get" })
  match("/insert_favorite_record", { :controller => "favorites", :action => "save_new_info", :via => "post" })

  # READ
  match("/favorites", { :controller => "favorites", :action => "list", :via => "get" })
  match("/favorites/:id_to_display", { :controller => "favorites", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_favorite_form/:id_to_prefill", { :controller => "favorites", :action => "prefilled_form", :via => "get" })
  match("/update_favorite_record/:id_to_modify", { :controller => "favorites", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Itinerary resource:

  # CREATE
  match("/new_itinerary_form", { :controller => "itineraries", :action => "blank_form", :via => "get" })
  match("/insert_itinerary_record", { :controller => "itineraries", :action => "save_new_info", :via => "post" })

  # READ
  match("/itineraries", { :controller => "itineraries", :action => "list", :via => "get" })
  match("/itineraries/:id_to_display", { :controller => "itineraries", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_itinerary_form/:id_to_prefill", { :controller => "itineraries", :action => "prefilled_form", :via => "get" })
  match("/update_itinerary_record/:id_to_modify", { :controller => "itineraries", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_itinerary/:id_to_remove", { :controller => "itineraries", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Region resource:

  # CREATE
  match("/new_region_form", { :controller => "regions", :action => "blank_form", :via => "get" })
  match("/insert_region_record", { :controller => "regions", :action => "save_new_info", :via => "post" })

  # READ
  match("/regions", { :controller => "regions", :action => "list", :via => "get" })
  match("/regions/:id_to_display", { :controller => "regions", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_region_form/:id_to_prefill", { :controller => "regions", :action => "prefilled_form", :via => "get" })
  match("/update_region_record/:id_to_modify", { :controller => "regions", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_region/:id_to_remove", { :controller => "regions", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :users
  
  match("/", { :controller => "index", :action => "regions", :via => "get" })
  
  match("/9", { :controller => "index", :action => "us_itineraries", :via => "get" })
  
  match("/2", { :controller => "index", :action => "asia_itineraries", :via => "get" })
  
  match("/mexico", { :controller => "index", :action => "mexico", :via => "get" })
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
