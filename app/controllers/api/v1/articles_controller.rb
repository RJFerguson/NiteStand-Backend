class Api::V1::ArticlesController < ApplicationController

  def index
    articles = Article.all
    render json: articles
  end

  def show
    render json: Article.find(params[:id])
  end

  # def create
  #   name = params["cocktail"]["name"]
  #   description = params["cocktail"]["description"]
  #   instructions = params["cocktail"]["instructions"]
  #   source = params["cocktail"]["source"]
  #
  #   cocktail = Cocktail.create(name: name, description: description, instructions:instructions, source: source)
  #
  #   params["cocktail"]["proportions"].each do |proportion|
  #     ing = Ingredient.find_or_create_by(name: proportion["ingredient"])
  #     prop = Proportion.find_or_create_by(amount: proportion["amount"], cocktail: cocktail, ingredient: ing)
  #   end
  #
  #   render json: cocktail
  # end

end
