class IndexController < ApplicationController
   def regions
     render("trips/regions.html.erb")
   end 
   
   def mexico
     render("trips/mexico.html.erb")
   end 
   
   def region_itineraries

     @region = Itinerary.all.where({ :region_id => "1"})
    
    render("trips/united_states.html.erb")
   end 
end