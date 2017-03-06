class CredentialsController < ApplicationController
  def credentials
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"

    @user = User.from_omniauth(request.env["omniauth.auth"])


    set_user(@user)
  end
end
