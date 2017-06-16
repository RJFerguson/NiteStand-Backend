class CreateReadingListArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_list_articles do |t|
      t.integer :article_id
      t.integer :reading_list_id
      t.timestamps
    end
  end
end
