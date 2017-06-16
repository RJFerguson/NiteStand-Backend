class Api::V1::ReadingListArticlesController < ApplicationController

  def index
    reading_list_articles = ReadingListArticle.all
    render json: reading_list_articles
  end

  def show
    render json: ReadingListArticle.find(params[:id])
  end

end
