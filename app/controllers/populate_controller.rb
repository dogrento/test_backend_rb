class PopulateController < ApplicationController
  def new
  end

  def create
    render plain: params[:populate].inspect
  end
end
