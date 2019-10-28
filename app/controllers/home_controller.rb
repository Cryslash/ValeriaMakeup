class HomeController < ApplicationController
  def index
  	@social_medias = {
      0=> ['facebook','link','fab fa-facebook-square'],
      1=> ['instagram','link','fab fa-instagram'],
      2=> ['whatsapp','link','fab fa-whatsapp'] }
    
    @schedule = Schedule.new
    
    if current_user != nil
      @my_schedules = Schedule.find_by :user_id => current_user.id
    end
  end  
end
