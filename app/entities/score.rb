class Score < Entity
  attribute :points, Integer
  attribute :previous_difference, Integer
  attribute :last_update, Time, default: Time.now

  validates :points, :previous_difference, presence: true
  validates :points, numericality: { only_integer: true }
end