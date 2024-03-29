class RegistrationsController < Devise::RegistrationsController

  before_action :one_admin_registered?, only: [:new, :create]

  protected

  def one_admin_registered?
    if ((Admin.count == 1) & (admin_signed_in?))
      redirect_to root_path
    elsif Admin.count == 1
      redirect_to root_path, notice: "You are not authorized to sign up!"
    end
  end

end
