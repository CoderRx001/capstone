class PagesController < ApplicationController
  
  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
      render template: "pages/#{params[:page]}"
    end  
end
