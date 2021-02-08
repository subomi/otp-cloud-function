class OtpResponseSerializer < ApplicationSerializer
  attributes :phone_number, :otp, :expires_at

  def expires_at
    Time.at(object.expires_at).utc.to_datetime
  end
end
