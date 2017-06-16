class ReadingList < ApplicationRecord
  has_many :reading_list_articles
  has_many :articles, through: :reading_list_articles
end
