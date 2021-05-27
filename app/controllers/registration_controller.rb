class RegistrationController < ApplicationController
  protected

  def update_resource(reource, params)
    resource.update_without_password(params)
  end
end
