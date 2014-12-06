require 'twilio-ruby'

class TwilioController < ApplicationController

# put your own credentials here

  def sms
    SendSms.sms
  end
end
