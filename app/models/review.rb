class Review < ApplicationRecord
  belongs_to :list
  belongs_to :bookmark

  validates :content, presence: true
end
