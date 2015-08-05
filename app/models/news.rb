class News < ActiveRecord::Base
  # Associations
  belongs_to :modul

  # Validations
  validates :subject, presence: true
  validates :description, presence: true
  validates :modul_id, presence: true
end
