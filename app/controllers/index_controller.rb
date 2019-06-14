class IndexController < ApplicationController
   def regions
     render("trips/regions.html.erb")
   end 
   
   def mexico
     render("trips/mexico.html.erb")
   end 
   
   def us_itineraries

     @region = Itinerary.all.where({ :region_id => "9"})
    
    render("trips/united_states.html.erb")
   end
   
   def asia_itineraries

     @region = Itinerary.all.where({ :region_id => "2"})
    
    render("trips/asia.html.erb")
   end 
end