class IndividualsController < ApplicationController
  respond_to :html, :json

  def show
    respond_with @individual = Individual.find(params[:id])
  end
end
