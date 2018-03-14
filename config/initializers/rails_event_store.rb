# config/initializers/rails_event_store.rb
Rails.configuration.to_prepare do
  Rails.configuration.event_store = RailsEventStore::Client.new
  event_store = Rails.configuration.event_store

  ###########################################
  # Add subscribers here :
  ###########################################


end