class Api::V1::ReadingListsController < ApplicationController

  def index
    reading_lists = ReadingList.all
    render json: reading_lists, include: [:articles]
  end

  def show
    render json: ReadingList.find(params[:id])
  end

  def create
    # byebug
    reading_list = ReadingList.create(reading_list_params)
    params["articles"].each do |article|
      ReadingListArticle.create(reading_list_id: reading_list["id"], article_id: article["id"])
    end
    render json: reading_list, include: [:articles]
  end

  def destroy
    reading_list = ReadingList.find(params[:id])
    reading_list.destroy
  end

  private

  def reading_list_params
    params.require(:reading_list).permit(:title, { articles: [:id, :web_url, :lead_paragraph, :headling, :pub_date, :word_count]})
  end

end
