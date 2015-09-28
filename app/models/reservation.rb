class Reservation < ActiveRecord::Base
  belongs_to :gear
  belongs_to :user
end
