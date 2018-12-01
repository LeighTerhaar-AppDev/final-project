class SequencesController < ApplicationController
  def index
    @sequences = Sequence.all

    render("sequence_templates/index.html.erb")
  end

  def show
    @sequence = Sequence.find(params.fetch("id_to_display"))

    render("sequence_templates/show.html.erb")
  end

  def new_form
    @sequence = Sequence.new

    render("sequence_templates/new_form.html.erb")
  end

  def create_row
    @sequence = Sequence.new

    @sequence.yogaflow_id = params.fetch("yogaflow_id")
    @sequence.pose_id = params.fetch("pose_id")

    if @sequence.valid?
      @sequence.save

      redirect_back(:fallback_location => "/sequences", :notice => "Sequence created successfully.")
    else
      render("sequence_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @sequence = Sequence.find(params.fetch("prefill_with_id"))

    render("sequence_templates/edit_form.html.erb")
  end

  def update_row
    @sequence = Sequence.find(params.fetch("id_to_modify"))

    @sequence.yogaflow_id = params.fetch("yogaflow_id")
    @sequence.pose_id = params.fetch("pose_id")

    if @sequence.valid?
      @sequence.save

      redirect_to("/sequences/#{@sequence.id}", :notice => "Sequence updated successfully.")
    else
      render("sequence_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @sequence = Sequence.find(params.fetch("id_to_remove"))

    @sequence.destroy

    redirect_to("/sequences", :notice => "Sequence deleted successfully.")
  end
end
