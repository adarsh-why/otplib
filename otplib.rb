require 'twilio-ruby'

class Otplib


    def generate_otp
        return rand(1000..9999).to_s
    end

    def send_otp from, to, otp, account_sid, auth_token
        client = Twilio::REST::Client.new account_sid, auth_token
        client.account.messages.create(
            :from => "#{from}",
            :to => "+91#{to}",
            :body => "Hi! your OTP is : #{otp}"
          )
          return "OTP has been sent successfully to #{to}"
    end

    def validate_otp user_otp
        if recieved_otp == session[:otp]
            return true
        else
            return false
        end
    end
end