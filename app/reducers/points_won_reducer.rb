class PointsWonReducer

  def self.call(event, old_state = Score.new(points: 0, previous_difference: 0))
    Score.new(
      points: old_state.points + event.data[:points],
      previous_difference: event.data[:points]
    )
  end

end