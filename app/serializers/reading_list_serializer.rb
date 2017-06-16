class ReadingListSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :reading_list_articles
end
