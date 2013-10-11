class HomeController < ApplicationController
  def index
    @cars = ['Acura', 'Audi', 'BMW', 'Cadillac', 'Ferrari']
  end
end
