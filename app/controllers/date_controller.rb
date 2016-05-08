class DateController < ApplicationController
  def index
  end

  def result
    array = []
    params_1 = params[:first]['born_on']
    params_2 = params[:second]['born']
    array << params_1
    array << params_2
    @dates = User.where("date_1 IN (?) OR date_2 IN (?)", array, array).where(:gender => params[:gender] )
  end
end
