class NoodlesController < ApplicationController
  def index
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


  private

  def noodle_params
    params.require(:noodle).permit(:name, :photo)
  end
end
