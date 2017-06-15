class CreateReadingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
