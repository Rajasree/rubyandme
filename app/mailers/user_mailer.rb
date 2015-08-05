class UserMailer < ApplicationMailer
  def news(user, news)
  	@news = news
  	@user = user
  	@user.each do |user|
  	  binding.pry
  	  mail(to: user.email, subject: 'News Updates From BrunchKnock')
  	end
  end
end
