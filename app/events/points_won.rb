class PointsWon < Entity
  attribute :points, :integer

  validates :points, numericality: { only_integer: true }
  validate :points_gtr_than_0

  private

  def points_gtr_than_0
    errors.add(:_, 'Points musts be > than 0') if points < 0
  end
end