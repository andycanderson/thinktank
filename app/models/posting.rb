class Posting < ActiveRecord::Base
  belongs_to :recruiter
  has_many :applicants, through: :likes

  has_and_belongs_to_many :tags

  after_initialize :zero_out

  def zero_out
    self.dislike = 0
    self.like = 0
  end


end
