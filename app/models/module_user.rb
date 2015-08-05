class ModuleUser < ActiveRecord::Base
  belongs_to :modul
  belongs_to :user

  # Validations
  validate :validate_mod_user_uniqness
  attr_accessor :active_is_top

  # Scopes
  scope :with_mod_user_id, -> (modul_id, user_id) { where(modul_id: modul_id, user_id: user_id) }

  def validate_mod_user_uniqness
    modul_user = ModuleUser.with_mod_user_id(self.modul_id, self.user_id)
    errors.add(:user_id, "Already a member of this Module") if modul_user.present?
  end
end
