class RunsController < ApplicationController 
  respond_to :html, :json

  def show
    respond_with @run = Run.find(params[:id])
  end 
end 
