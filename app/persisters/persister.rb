class Persister

  def mapping_from_entity(entity, model_class)
    model_class.new(entity.attributes)
  end

end