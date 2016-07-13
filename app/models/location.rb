class Location < ActiveRecord::Base
  has_many :monsters
  validates :address, presence: true
end
