class YogaflowsController < ApplicationController
  def main_index
    render("yogaflow_templates/main_index.html.erb")
  end
  
  def index
    @q = Yogaflow.ransack(params[:q])
    @yogaflows = @q.result(:distinct => true).includes(:user).page(params[:page])

    render("yogaflow_templates/index.html.erb")
  end

  def show
    @yogaflow = Yogaflow.find(params.fetch("id_to_display"))
    @sequences= Sequence.where(yogaflow_id: @yogaflow.id)
    
    
    render("yogaflow_templates/show.html.erb")
  end
  
  def show_myflows
    @user = User.find(params.fetch("user_id"))
    @yogaflow = Yogaflow.where(user_id: @user.id).ransack(params[:q])
    @flows = @yogaflow.result(:distinct => true).includes(:user).page(params[:page])


      
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
    
    redirect_to("/poses", :notice => "Yogaflow created successfully. Now you can add poses!")
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

  
end
