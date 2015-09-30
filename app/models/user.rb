class User < ActiveRecord::Base
  has_many :gears
  has_many :reservations

  def self.search(search)
    if search
      where('city LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
