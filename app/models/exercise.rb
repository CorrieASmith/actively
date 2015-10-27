class Exercise
  belongs_to :target
  validates :description, :presence => true
end
