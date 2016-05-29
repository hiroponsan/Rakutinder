class DateController < ApplicationController
  
  def index
    @users = User.all
    @currentUser = current_user.id
  end

  def result
    @currentUser = current_user.id
    array = []
    params_1 = params[:first]['born_on']
    params_2 = params[:second]['born']
    array << params_1
    array << params_2
    @dates = User.joins("LEFT JOIN calenders ON calenders.user_id = users.id")
            .where("users.date_1 IN (?) OR users.date_2 IN (?)", array, array).where("users.gender" => params[:gender] )
  end

end
