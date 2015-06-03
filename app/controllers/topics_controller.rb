class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new
    @topic.journal_topic = params[:journal_topic]

    if @topic.save
      redirect_to "/topics", :notice => "Topic created successfully."
    else
      render 'new'
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])

    @topic.journal_topic = params[:journal_topic]

    if @topic.save
      redirect_to "/topics", :notice => "Topic updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @topic = Topic.find(params[:id])

    @topic.destroy

    redirect_to "/topics", :notice => "Topic deleted."
  end
end
