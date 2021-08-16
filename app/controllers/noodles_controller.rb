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

  def show
    @noodle = Noodle.find(params[:id])
  end

  def edit
    @noodle = Noodle.find(params[:id])
  end

  def update
    @noodle = Noodle.find(params[:id])
    if @noodle.update_attributes(noodle_params)
      redirect_to show_noodle_path
    else
      render("noodles/#{params[:id]}/edit")
    end
  end

  private

  def noodle_params
    params.permit(:name, :photo)
  end
end
