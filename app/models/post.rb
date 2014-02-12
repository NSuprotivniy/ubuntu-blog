class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :title, presence: true, length: { minimum: 2 }
  validates :text, presence: true, length: { minimum: 10 }
  validates :user_id, presence: true
end