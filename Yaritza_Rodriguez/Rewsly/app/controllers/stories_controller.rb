class StoriesController < ApplicationController
  def index
      @stories = Story.all
  end

  def show
      @story = Story.find params[:id]
  end

  def create
      @story = Story.create safe_story

      if @story.save
        #puts "Succesfully saved!"
        redirect_to @story

      else
        render 'new'

    end
  end

  def new
        @story = Story.new
        #@story.save
  end

  private

  def safe_story
    params.require(:story).permit(:title, :category, :link, :upvotes)
  end

end
