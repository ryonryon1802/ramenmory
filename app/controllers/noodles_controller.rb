class NoodlesController < ApplicationController
  def index
    @all_noodles = Noodle.all
  end

  def new
    @noodle = Noodle.new
  end

  def create
    @noodle = Noodle.new(name: params[:name])
    if @noodle.save
      redirect_to '/noodles'
    else
      render('noodles/new')
    end
  end
end
