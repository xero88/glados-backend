class Score < Entity
  attribute :points, :integer
  attribute :previous_difference, :integer
  attribute :last_update, :time, default: Time.now

  validates :points, :previous_difference, presence: true
  validates :points, numericality: { only_integer: true }
end