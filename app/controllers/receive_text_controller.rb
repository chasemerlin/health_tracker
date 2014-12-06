class ReceiveTextController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    message_body = params["Body"] if params["Body"]
    mood_rating = message_body.split(",").first.to_i
    energy_rating = message_body.split(",").last.to_i
    from_number = params["From"]
 
    new_evaluation = SelfEvaluation.new()
    new_evaluation.mood_rating = mood_rating
    new_evaluation.energy_rating = energy_rating

    #Assign user here
    if from_number == "+18134688604"
      new_evaluation.user_id = 1
    elsif from_number == "+18137167850"
      new_evaluation.user_id = 2
    end
    new_evaluation.save
  end
end
