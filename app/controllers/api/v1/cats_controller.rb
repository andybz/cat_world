class Api::V1::CatsController < ApplicationController
  respond_to :json

  def index
    respond_with cats: Cat.all
  end

end
