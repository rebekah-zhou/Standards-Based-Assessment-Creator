class StandardSerializer < ActiveModel::Serializer
  attributes :id, :description, :notation
  has_one :cluster
end
