class Entity
  include ActiveModel::Model
  include Virtus.model

  def initialize(*args)
    super
    validate!
  end

end