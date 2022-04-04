class Domain < ApplicationRecord
  belongs_to :conceptualCategory

  has_many :clusters
end
