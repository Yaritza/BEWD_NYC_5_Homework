class StoriesController < ApplicationController
  def index
      @stories = Story.all
  end

  def show
      @story = Story.find params[:id]
  end

 # def search

  #end

  def create
    @story = Story.new
  end

  def new
        @story = Story.new
  end

end
