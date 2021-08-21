class NoodlesController < ApplicationController
  RECENT = 6

  def home
    @recent_noodles = Noodle.all.order(id: "DESC").first(RECENT)
  end

  def new
    @noodle = Noodle.new
    gon.google_api_key = ENV['GOOGLE_API_KEY']
  end

  def create
    @noodle = Noodle.new(noodle_params)
    if @noodle.save
      redirect_to noodles_path
    else
      render new_noodle_path
    end
  end

  def index
    @all_noodles = Noodle.all.order(id: "DESC")
  end

  def show
    @noodle = Noodle.find(params[:id])
  end

  def edit
    @noodle = Noodle.find(params[:id])
    gon.google_api_key = ENV['GOOGLE_API_KEY']
  end

  def update
    @noodle = Noodle.find(params[:id])
    if @noodle.update_attributes(noodle_params)
      redirect_to noodle_path
    else
      render edit_noodle_path
    end
  end

  def destroy
    Noodle.find(params[:id]).destroy
    redirect_to noodles_path
  end

  private

  def noodle_params
    params.permit(:name, :photo, :store, :location)
  end
end
