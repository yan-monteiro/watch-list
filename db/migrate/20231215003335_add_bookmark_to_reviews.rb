class AddBookmarkToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :bookmark, null: true, foreign_key: true
  end
end
