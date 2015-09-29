class Gear < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :reservations
end
