class ReceiveTextController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @message_body = params["Body"] if params["Body"]
    from_number = params["From"]
 
    new_evaluation = SelfEvaluation.new()
    new_evaluation[:mood_rating] = 1
    new_evaluation[:comments] = @message_body if @message_body

    #Assign user here

    
    new_evaluation.save
  end
end
