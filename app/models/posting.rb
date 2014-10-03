class Posting < ActiveRecord::Base
  belongs_to :recruiter
  has_many :likes
  has_many :profiles, through: :likes

  has_many :posting_tags
  has_many :tags, through: :posting_tags
end
