class Exercise < ActiveRecord::Base
  belongs_to :target
  validates :description, :presence => true
end
