class PointsWon < RailsEventStore::Event
  class Data < Entity
    attribute :points, Integer

    validates :points, presence: true
    validates :points, numericality: { only_integer: true }
    validate :points_gtr_than_0

    private

    def points_gtr_than_0
      errors.add(:_, 'Points musts be > than 0') if !points.nil? && points < 0
    end
  end
end