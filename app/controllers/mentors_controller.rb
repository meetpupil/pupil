class MentorsController < ApplicationController
  def new
    @mentor = Mentor.new
  end
  
  def create
    @mentor = Mentor.new(params[:mentor])
    @mentor.request = request
    if @mentor.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Your message could not be sent at this time.'
      render :new
    end
  end
end
