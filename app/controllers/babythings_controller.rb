class BabythingsController < ApplicationController

  def index
    @babythings = Babything.all
  end

  def show
    @babything =  Babything.find(params[:id])
  end

  def new
    @babything =  Babything.new # needed to instantiate the form_for
  end

def create
    @babything = Babything.new(babything_params)
    @babything.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

private

  def babything_params
    params.require(:babything).permit(:name)
  end
end
