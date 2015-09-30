class SearchsController < ApplicationController

  def gears
    @gears = Gear.search(params)
  end



end
