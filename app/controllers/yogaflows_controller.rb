class YogaflowsController < ApplicationController
  def main_index
    render("yogaflow_templates/main_index.html.erb")
  end
  
  def index
    @yogaflows = Yogaflow.all

    render("yogaflow_templates/index.html.erb")
  end

  def show
    @yogaflow = Yogaflow.find(params.fetch("id_to_display"))

    render("yogaflow_templates/show.html.erb")
  end
  
  def show_myflows
    @user = User.all
    @yogaflow = Yogaflow.where(user_id: current_user.id)
    @sequences = Sequence.where(yogaflow_id: @yogaflow.id)
    
    render("yogaflow_templates/show_myflows.html.erb")
  end

  def new_form
    @yogaflow = Yogaflow.new

    render("yogaflow_templates/new_form.html.erb")
  end

  def create_row
    @yogaflow = Yogaflow.new

    @yogaflow.user_id = params.fetch("user_id")
    @yogaflow.title = params.fetch("title")
    @yogaflow.intention = params.fetch("intention")
    @yogaflow.description = params.fetch("description")
    @yogaflow.yogatype = params.fetch("yogatype")

    if @yogaflow.valid?
      @yogaflow.save
    
    @sequence = Sequence.new.where(yogaflow_id: yogaflow.id)

    redirect_to("/yogaflows/#{@yogaflow.id}/addposes", :notice => "Yogaflow created successfully. Now you can add poses!")
    else
      render("yogaflow_templates/new_form_with_errors.html.erb")
    end
  end
  
  def edit_form
    @yogaflow = Yogaflow.find(params.fetch("prefill_with_id"))

    render("yogaflow_templates/edit_form.html.erb")
  end

  def update_row
    @yogaflow = Yogaflow.find(params.fetch("id_to_modify"))

    @yogaflow.user_id = params.fetch("user_id")
    @yogaflow.title = params.fetch("title")
    @yogaflow.intention = params.fetch("intention")
    @yogaflow.description = params.fetch("description")
    @yogaflow.yogatype = params.fetch("yogatype")

    if @yogaflow.valid?
      @yogaflow.save

      redirect_to("/yogaflows/#{@yogaflow.id}", :notice => "Yogaflow updated successfully.")
    else
      render("yogaflow_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @yogaflow = Yogaflow.find(params.fetch("id_to_remove"))

    @yogaflow.destroy

    redirect_to("/yogaflows", :notice => "Yogaflow deleted successfully.")
  end
  
  def add_poses
    @yogaflow = Yogaflow.find(params.fetch("id_to_display"))
    
    @sequence = Sequence.new

    if @sequence.valid?
      @sequence.save

      redirect_back(:fallback_location => "/yogaflows/:id_to_display/addposes", :notice => "Sequence created successfully.")
    else
      render("sequence_templates/new_form_with_errors.html.erb")
    end
  end
  
end
