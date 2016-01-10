class Rsvp < ActiveRecord::Base
  belongs_to :guest
  belongs_to :linked_guest, class_name => "Guest"
end
