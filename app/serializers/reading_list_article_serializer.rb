class ReadingListArticleSerializer < ActiveModel::Serializer
  attributes :id, :article_id

  def article_id
    object.article.id
  end
end
