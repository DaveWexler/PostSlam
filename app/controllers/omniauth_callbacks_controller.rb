class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    binding.pry
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      sign_in_and_redirect user, notice: "Signed in!"
    else
      binding.pry
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_path
  end
end
end
