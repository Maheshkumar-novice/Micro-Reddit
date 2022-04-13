class Post < ApplicationRecord
  validates :title, :url, :user_id, presence: true
  validates :title, length: { in: 4..20 }
  validates :url, length: { in: 4..40 }

  belongs_to :user
  has_many :comments
end
