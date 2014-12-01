require 'twilio-ruby'

class TwilioController < ApplicationController

# put your own credentials here

  def sms
    account_sid = 'ACceba2e7556dac103d00c244529573f27'
    auth_token = 'ecc8b503545632c45a6d343be4d41cae'
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
    # To Chase
    @client.messages.create(
        from: '+1813644-8706',
        to: '+18134688604',
        body: 'Hey there!'
      )
  end
end
