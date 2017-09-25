class DemosController < ApplicationController
  def new
    @demo = Demo.new
  end
  
  def create
    @demo = Demo.new(params[:demo])
    @demo.request = request
    if @demo.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Your message could not be sent at this time.'
      render :new
    end
  end
end
