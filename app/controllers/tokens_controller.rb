class TokensController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    
    if (params[:username])
      render json: {
        jwt: encode_token({id: user.id, username: user.username})
      }
    else
      head :not_found
    end
  end

  def destroy
    user = User.find_by(username: params[:username])
    user.find(params[:id]).destroy!
    render json: { message: 'You have logged out succesfully' }
  end

  private
  def encode_token(payload={})
      exp = 24.hours.from_now
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end