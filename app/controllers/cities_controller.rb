class CitiesController < ApplicationController
  def index
    @cities = City.all
    if params[:city] && params[:city] != ""
      @cities = City.where("name like ?", "%#{params[:city]}%")
    end
  end

  def search
    @results = City.joins(:state).where("cities.city like ? OR states.state like ?", "%#{params[:city]}%",
                                        "%#{params[:city]}%")

  end

  def show
    @cities = City.find(params[:id])
  end

end
