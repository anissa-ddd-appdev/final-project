class IndexController < ApplicationController
   def regions
     render("trips/regions.html.erb")
   end 
   
   def united_states
     render("trips/united_states.html.erb")
   end 
   
   def mexico
     render("trips/mexico.html.erb")
   end 
end