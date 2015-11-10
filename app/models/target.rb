class Target < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  validates :muscle, :presence => true
end
