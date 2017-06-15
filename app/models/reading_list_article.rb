class ReadingListArticle < ApplicationRecord
  belongs_to :article
  belongs_to :reading_list
end
