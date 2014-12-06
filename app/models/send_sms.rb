require 'twilio-ruby'

class SendSms < ActiveRecord::Base
  
  def self.sms
    account_sid = 'ACceba2e7556dac103d00c244529573f27'
    auth_token = 'ecc8b503545632c45a6d343be4d41cae'
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
    # To Chase
    @client.messages.create(
        from: '+1813644-8706',
        to: '+18134688604',
        body: 'Enter your current mood (1-10) and your current energy (1-10) separated by a comma. Example: 7,6'
      )
  end
end