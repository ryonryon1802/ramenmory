class NoodlesController < ApplicationController
  RECENT = 6

  def home
    @recent_noodles = Noodle.all.first(RECENT)
    @all_noodles = Noodle.all
  end

  def new
    @noodle = Noodle.new
  end

  def create
    @noodle = Noodle.new(noodle_params)
    if @noodle.save
      redirect_to '/noodles'
    else
      render('noodles/new')
    end
  end

  def index
    @all_noodles = Noodle.all
  end

  private

  def noodle_params
    params.permit(:name, :photo)
  end
end
