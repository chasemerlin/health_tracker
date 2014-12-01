class ReceiveTextController < ApplicationController
  def index
    @message_body = params["Body"]
    from_number = params["From"]
 
    new_evaluation = SelfEvaluation.new()
    new_evaluation.comments = message_body
  end
end
