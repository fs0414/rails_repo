class GoogleUsers::OmniauthCallbacksController < ApplicationController
  def google_oauth2
    @googler_user = GoogleUser.from_google(request.env["omniauth.auth"])
    sign_in_and_redirect @google_user
  end
end
