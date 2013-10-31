class StaticPagesController < ApplicationController

  def index
    @picture = Picture.first
  end

end