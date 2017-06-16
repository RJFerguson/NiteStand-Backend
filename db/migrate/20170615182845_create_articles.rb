class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :web_url
      t.string :lead_paragraph
      t.string :headline
      t.date :pub_date
      t.integer :word_count
      t.timestamps
    end

  end
end
