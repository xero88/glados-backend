require 'spec_helper'

RSpec.describe Score, type: :model do

  let(:points) { 100 }
  let(:previous_difference) { 50 }

  describe 'must have' do
    it 'points' do
      expect(Score.new(points: 100, previous_difference: previous_difference)).to validate_presence_of(:points)
    end
    it 'a difference with previous score' do
      expect(Score.new(points: points, previous_difference: -50)).to validate_presence_of(:previous_difference)
    end
    context 'points' do
      it 'can be negative (-2)' do
        score = Score.new(points: -2, previous_difference: previous_difference)
        expect(score.points).to eq(-2)
      end
      it 'are only integer (no 2.5 allowed)' do
        score = Score.new(points: 2.5, previous_difference: previous_difference)
        expect(score.points).to eq(2)
      end
    end
    context 'difference with previous score' do
      it 'can be negative (-2)' do
        score = Score.new(points: points, previous_difference: -2)
        expect(score.previous_difference).to eq(-2)
      end
      it 'is only integer (no 2.5 allowed)' do
        score = Score.new(points: points, previous_difference: 2.5)
        expect(score.previous_difference).to eq(2)
      end
    end
    context 'date of last update' do
      it 'now if created' do
        score = Score.new(points: points, previous_difference: 2.5)
        expect(score.last_update.class).to eq(Time)
      end
      it 'updated date if updated' do
        date = Time.now
        score = Score.new(points: points, previous_difference: 2.5, last_update: date)
        expect(score.last_update).to eq(date)
      end
    end
  end
end