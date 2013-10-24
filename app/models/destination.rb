class Destination < ActiveRecord::Base
  attr_accessible :origins, :destinations, :sensor, :mode, :units

  validates :origins, presence: true
  validates :destinations, presence: true

end
