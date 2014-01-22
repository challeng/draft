class HeroController < ApplicationController
  def index
  	@heroes = Hero.all
  end

  def show
  end
end
