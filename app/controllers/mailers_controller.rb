class MailersController < ApplicationController
  def create
  	@news = News.find params[:id]
  	modul = Modul.where(module_name: 'BrunchKnock')
    modul_users = modul.first.users unless modul.blank?
  	modul_users = modul.first.users
  	UserMailer.news(modul_users, @news).deliver
  	redirect_to news_index_path
  end
end
