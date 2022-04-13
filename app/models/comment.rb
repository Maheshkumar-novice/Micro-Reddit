class Comment < ApplicationRecord
  validates :text, :post_id, :user_id, presence: true
  validates :text, length: { in: 1..200 }

  belongs_to :user
  belongs_to :post
end
