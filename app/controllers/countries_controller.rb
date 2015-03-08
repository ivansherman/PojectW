class CountriesController < ApplicationController
  def index
    @country = Country.all
  end

  def show
    
  end
end
