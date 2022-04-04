class DomainSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :conceptualCategory
end
