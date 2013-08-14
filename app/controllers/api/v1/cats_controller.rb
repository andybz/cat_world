class Api::V1::CatsController < ApplicationController
  respond_to :json

  def index
    respond_with cats: Cat.all
  end

  def show
    respond_with cat: Cat.find(params[:id])
  end

  def create
    render json: Cat.create!(cat_params), status: :created
  end

  def update
    render json: { cat: Cat.update(params[:id], cat_params) }, status: :accepted
  end

  private

  def cat_params
    params.required(:cat).permit!
  end

end
