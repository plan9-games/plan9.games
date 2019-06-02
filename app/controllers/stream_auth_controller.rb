class StreamAuthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :auth

  def auth
    if params[:name] == "jon" && params[:psk] == "password"
      render plain: "All Good", status: 201
    else
      render plain: "No", status: 404
    end
  end
end
