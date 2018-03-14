require 'spec_helper'

RSpec.describe PointsWonReducer, type: :helper do

  describe 'create new state' do
    context 'PointsWon(50 points) and no previous state' do
      it 'return new Score(50 points, 50 previous_difference)' do
        event = PointsWon.new(data: PointsWon::Data.new(points: 50))

        new_state = PointsWonReducer.call(event)
        expect(new_state.points).to eq(50)
        expect(new_state.previous_difference).to eq(50)
      end
    end
    context 'PointsWon(50 points) and Score(100 points, -10 previous_difference)' do
      it 'return new Score(150 points, 50 previous_difference)' do
        event = PointsWon.new(data: PointsWon::Data.new(points: 50))
        old_state_score = Score.new(points: 100, previous_difference: -10)

        new_state = PointsWonReducer.call(event, old_state_score)
        expect(new_state.points).to eq(150)
        expect(new_state.previous_difference).to eq(50)
      end
    end
  end
end