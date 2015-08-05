class ModuleUsersController < ApplicationController
	include ControllerConcern

	def create
		@user = User.find params[:id]
		module_name = convert_controller_to_model(params[:controller_name])
		modul = Modul.where(module_name: module_name)
		module_user = ModuleUser.new({ modul_id: modul.first.id, user_id: @user.id }) if @user.present? && modul.present?
		if module_user.save
			@message = t("messages.success_join")
		else
			error = module_user.errors.messages
			array = []
			error.each{ |k, v| array << v.first }
			@error = array
		end
		respond_to_js
	end
end
