class ReceiveTextController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    message_body = params["Body"] if params["Body"]
    mood_rating = message_body.split(",").first
    energy_rating = message_body.split(",").last
    from_number = params["From"]
 
    new_evaluation = SelfEvaluation.new()
    new_evaluation.mood_rating = mood_rating
    new_evaluation.energy_rating = energy_rating

    #Assign user here

    
    new_evaluation.save
  end
end
