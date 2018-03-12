class Entity
  include ActiveModel::Model
  include ActiveModelAttributes

  def initialize(*args)
    super
    validate!
  end

end