class HomeController < ApplicationController
  def index
  	@social_medias = {
      0=> ['facebook','link','fab fa-facebook-square'],
      1=> ['instagram','link','fab fa-instagram'],
      2=> ['whatsapp','link','fab fa-whatsapp'] }
  end
end
