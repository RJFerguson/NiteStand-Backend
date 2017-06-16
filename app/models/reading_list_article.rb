class ReadingListArticle < ApplicationRecord
  belongs_to :article
  belongs_to :reading_list
  accepts_nested_attributes_for :article
end
