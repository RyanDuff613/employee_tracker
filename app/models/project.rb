class Project < ApplicationRecord
  belongs_to :division
  has_and_belongs_to_many(:employees)
end