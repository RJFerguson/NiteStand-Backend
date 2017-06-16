class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :lead_paragraph, :headline, :pub_date, :word_count, :web_url
end
