class ConceptualCategory < ApplicationRecord
    belongs_to: course
    has_many :domains
end
