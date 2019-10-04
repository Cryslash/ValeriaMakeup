class HomeController < ApplicationController
  def index
  	@social_medias = {
      0=> ['facebook','link'],
      1=> ['instagram','link'],
      2=> ['whatsapp','link'] }
  end
end
