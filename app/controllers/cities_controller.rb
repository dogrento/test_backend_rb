class CitiesController < ApplicationController
  def index
    @cities = City.all
    puts(params)
    if params[:city] && params[:city] != ""
      puts("printando essa caceta")
      puts(params[:city])
      @cities = City.where("name like ?", "%#{params[:city]}%")
    end
  end

  # def create
  #   render plain: params[:city]
  # end

  def search
    puts('entrando no search')
    puts(params)
    # @results = City.where("city like ? OR state LIKE ?", "%#{params[:city]}%","%#{params[:city]}%")
    @results = City.joins(:state).where("cities.city like ? OR states.state like ?", "%#{params[:city]}%",
                                        "%#{params[:city]}%")

  end

  # def search
  #   @city = params[:state]
  #   @city = params[:city]
  #
  #   render plain: params[:state].inspect
  #   puts params[:state].inspect
  # end

  def show
    @cities = City.find(params[:id])
  end

end
