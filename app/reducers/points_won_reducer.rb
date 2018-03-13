class PointsWonReducer

  def call(event, old_state = Score.new(points: 0, previous_difference: 0))
    Score.new(
      points: old_state.points + event.points,
      previous_difference: event.points
    )
  end

end