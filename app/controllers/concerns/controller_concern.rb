module ControllerConcern  
  extend ActiveSupport::Concern

  def convert_controller_to_model(controller_name)
    return controller_name.singularize.camelize
  end
end
