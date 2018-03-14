class Persister

  def self.mapping_from_entity(entity, model_class)
    model_class.new(entity.attributes)
  end

end