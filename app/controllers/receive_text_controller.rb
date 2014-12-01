class ReceiveTextController < ApplicationController
  def index
    @message_body = params["Body"] if params["Body"]
    from_number = params["From"]
 
    new_evaluation = SelfEvaluation.new()
    new_evaluation.comments = @message_body if @message_body
    new_evaluation.save
  end
end
