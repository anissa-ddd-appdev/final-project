class ItinerariesController < ApplicationController
  def list
    @itineraries = Itinerary.all

    render("itinerary_templates/list.html.erb")
  end

  def details
    @itinerary = Itinerary.where({ :id => params.fetch("id_to_display") }).first

    render("itinerary_templates/details.html.erb")
  end

  def blank_form
    @itinerary = Itinerary.new

    render("itinerary_templates/blank_form.html.erb")
  end

  def save_new_info
    @itinerary = Itinerary.new

    @itinerary.name = params.fetch("name")
    @itinerary.photo = params.fetch("photo")
    @itinerary.url = params.fetch("url")
    @itinerary.description = params.fetch("description")
    @itinerary.length = params.fetch("length")
    @itinerary.country = params.fetch("country")
    @itinerary.region_id = params.fetch("region_id")
    @itinerary.owner_id = params.fetch("owner_id")
    @itinerary.travel_time = params.fetch("travel_time")

    if @itinerary.valid?
      @itinerary.save

      redirect_to("/", { :notice => "Itinerary created successfully." })
    else
      render("itinerary_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @itinerary = Itinerary.where({ :id => params.fetch("id_to_prefill") }).first

    render("itinerary_templates/prefilled_form.html.erb")
  end

  def save_edits
    @itinerary = Itinerary.where({ :id => params.fetch("id_to_modify") }).first

    @itinerary.name = params.fetch("name")
    @itinerary.photo = params.fetch("photo")
    @itinerary.url = params.fetch("url")
    @itinerary.description = params.fetch("description")
    @itinerary.length = params.fetch("length")
    @itinerary.country = params.fetch("country")
    @itinerary.region_id = params.fetch("region_id")
    @itinerary.owner_id = params.fetch("owner_id")
    @itinerary.travel_time = params.fetch("travel_time")

    if @itinerary.valid?
      @itinerary.save

      redirect_to("/itineraries/" + @itinerary.id.to_s, { :notice => "Itinerary updated successfully." })
    else
      render("itinerary_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @itinerary = Itinerary.where({ :id => params.fetch("id_to_remove") }).first

    @itinerary.destroy

    redirect_to("/itineraries", { :notice => "Itinerary deleted successfully." })
  end
  

end
