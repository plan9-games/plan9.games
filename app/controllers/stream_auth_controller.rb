class StreamAuthController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :auth

=begin

Parameters: {
  "app"=>"live",
  "flashver"=>"FMLE/3.0 (compatible; FMSc/1.0)",
  "swfurl"=>"rtmp://localhost:1935/live",
  "tcurl"=>"rtmp://localhost:1935/live",
  "pageurl"=>"", "addr"=>"172.17.0.1",
  "clientid"=>"17", "call"=>"publish",
  "name"=>"test",
  "type"=>"live"
}

=end

  def auth
    allowed = [
      "jon_xxx1",
      "emma_desu_butts",
    ]

    if allowed.include?(params[:name])
      render plain: "All Good", status: 201
    else
      render plain: "No", status: 404
    end
  end
end
