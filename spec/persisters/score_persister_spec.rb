require 'spec_helper'

RSpec.describe ScorePersister, type: :helper do

  describe '#call' do
    it 'persist score in DB' do
      expect{
        ScorePersister.call(Score.new(points: 100, previous_difference: -10))
      }.to change { ScoreModel.count }.by(1)
    end
  end
end