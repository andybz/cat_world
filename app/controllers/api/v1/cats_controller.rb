class Api::V1::CatsController < ApplicationController
  respond_to :json

  def index
    respond_with cats: Cat.all
  end

  def create
    render json: Cat.create!(cat_params), status: :created
  end

  private

  def cat_params
    params.required(:cat).permit!
  end

end
