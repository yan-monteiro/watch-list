class AddMovieToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookmarks, :movie, null: false, foreign_key: true
  end
end
