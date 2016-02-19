class Guest < ActiveRecord::Base
  belongs_to :rsvp
  has_many :dietary_reqirements
  has_many :contributions
  has_one :transport
end
