require 'spec_helper'

RSpec.describe PointsWon, type: :helper do
  describe 'must have' do
    it 'points' do
      event = PointsWon::Data.new(points: 100)
      expect(event.points).to eq(100)
    end
    context 'points' do
      it 'cannot be negative' do
        expect{
          PointsWon::Data.new(points: -1)
        }.to raise_error(ActiveModel::ValidationError)
      end
      it 'are only integer (no 2.5)' do
        event = PointsWon::Data.new(points: 1.5)
        expect(event.points).to eq(1)
      end
    end
  end
end