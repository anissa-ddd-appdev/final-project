class RegionsController < ApplicationController
  def list
    @regions = Region.all

    render("region_templates/list.html.erb")
  end

  def details
    @region = Region.where({ :id => params.fetch("id_to_display") }).first

    render("region_templates/details.html.erb")
  end

  def blank_form
    @region = Region.new

    render("region_templates/blank_form.html.erb")
  end

  def save_new_info
    @region = Region.new

    @region.name = params.fetch("name")

    if @region.valid?
      @region.save

      redirect_to("/regions", { :notice => "Region created successfully." })
    else
      render("region_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @region = Region.where({ :id => params.fetch("id_to_prefill") }).first

    render("region_templates/prefilled_form.html.erb")
  end

  def save_edits
    @region = Region.where({ :id => params.fetch("id_to_modify") }).first

    @region.name = params.fetch("name")

    if @region.valid?
      @region.save

      redirect_to("/regions/" + @region.id.to_s, { :notice => "Region updated successfully." })
    else
      render("region_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @region = Region.where({ :id => params.fetch("id_to_remove") }).first

    @region.destroy

    redirect_to("/regions", { :notice => "Region deleted successfully." })
  end
end
