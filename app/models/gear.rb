class Gear < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :reservations


  def self.search(search)
    city_search = search[:city]
    item_search = search[:item]
    if search
      where('item LIKE ?', "%#{item_search}%").joins(:user).where('city LIKE ?', "%#{city_search}%")
    else
      all
    end
  end

end
