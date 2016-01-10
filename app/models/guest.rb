class Guest < ActiveRecord::Base
  has_many :dietary_reqirements
  has_one :rsvp
  has_many :contributions
end
