class City < ApplicationRecord
  belongs_to :state
  validates :city, presence: true
  # def to_s
  #   city
  # end
end
