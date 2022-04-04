class ClusterSerializer < ActiveModel::Serializer
  attributes :id, :name, :notation
  has_one :domain
end
