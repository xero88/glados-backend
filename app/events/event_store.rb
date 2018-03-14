class EventStore

  def initialize(event_store_client = Rails.configuration.event_store)
    @event_store_client = event_store_client
  end

  def send(event_data, event_class_name)
    event = event_class_name.new(data: event_data)
    @event_store_client.publish_event(event)
  end

end