namespace :brunch_knock do
  desc "BrunchKnock Mail to Users"
  task :send_mail => :environment do |t,args|
    news = News.where("created_at >= ?", Time.zone.now.beginning_of_day)
    modul = Modul.where(module_name: 'BrunchKnock')
    modul_users = modul.first.users unless modul.blank?
    UserMailer.news(modul_users, news).deliver if (modul_users.present? && news.present?)
  end  
end