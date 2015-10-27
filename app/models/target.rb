class Target < ActiveRecord::Base
  has_many :exercises
  validates :muscle, :presence => true
end
