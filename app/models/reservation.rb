class Reservation < ActiveRecord::Base
  belongs_to :gear, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
