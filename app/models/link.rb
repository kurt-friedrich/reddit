class Link < ActiveRecord::Base
  has_many :votes
  belongs_to :user
  validates :url, :title, :user, presence: true
end
