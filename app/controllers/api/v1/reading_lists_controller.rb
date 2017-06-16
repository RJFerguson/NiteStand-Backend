class Api::V1::ReadingListsController < ApplicationController

  def index
    reading_lists = ReadingList.all
    render json: reading_lists
  end

  def show
    render json: ReadingList.find(params[:id])
  end

end
