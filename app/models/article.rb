class Article < ApplicationRecord
  has_many :reading_list_articles
  has_many :reading_lists, through: :reading_list_articles
end
