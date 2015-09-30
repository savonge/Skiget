class User < ActiveRecord::Base
  has_many :gears
  has_many :reservations


end
