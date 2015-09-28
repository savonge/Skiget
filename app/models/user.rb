class User < ActiveRecord::Base
  belongs_to :gear
  belongs_to :reservation
end
