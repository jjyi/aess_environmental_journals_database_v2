class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new
    @journal.journal_name = params[:journal_name]
    @journal.issues_per_yr = params[:issues_per_yr]
    @journal.journal_url = params[:journal_url]
    @journal.content_guide_url = params[:content_guide_url]
    @journal.topic_id = params[:topic_id]
    @journal.admin_id = params[:admin_id]

    if @journal.save
      redirect_to "/journals", :notice => "Journal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @journal = Journal.find(params[:id])
  end

  def update
    @journal = Journal.find(params[:id])

    @journal.journal_name = params[:journal_name]
    @journal.issues_per_yr = params[:issues_per_yr]
    @journal.journal_url = params[:journal_url]
    @journal.content_guide_url = params[:content_guide_url]
    @journal.topic_id = params[:topic_id]
    @journal.admin_id = params[:admin_id]

    if @journal.save
      redirect_to "/journals", :notice => "Journal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @journal = Journal.find(params[:id])

    @journal.destroy

    redirect_to "/journals", :notice => "Journal deleted."
  end
end
