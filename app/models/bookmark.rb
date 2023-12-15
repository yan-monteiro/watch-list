class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_many :reviews, dependent: :destroy

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, presence: true, length: { minimum: 6 }
end
