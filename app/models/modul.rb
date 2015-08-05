class Modul < ActiveRecord::Base
  has_many :users, through: :module_users
  has_many :module_users
  has_many :news
end
