class Api::V1::ReadingListsController < ApplicationController

  def index
    reading_lists = ReadingList.all 
    render json: reading_lists
  end

end
