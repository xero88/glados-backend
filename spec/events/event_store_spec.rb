require 'spec_helper'
require 'db_cleaner_helper'

RSpec.describe EventStore, type: :helper do

  describe '#send' do
    it 'persist PointsWon event in store' do
      event_store = RailsEventStore::Client.new
      EventStore.new(event_store).send(PointsWon::Data.new(points: 1), PointsWon)

      result = event_store.read_events_backward('all')

      expect(result.class).to be(Array)
      expect(result.count).to eq(1)
      expect(result[0].class).to be(PointsWon)
    end
  end
end