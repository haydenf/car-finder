class HomeController < ApplicationController
  def page
    @cars = Car.all
  end
end
