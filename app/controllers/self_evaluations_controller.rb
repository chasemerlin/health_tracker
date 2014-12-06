require "redis"
require "resque"
class SelfEvaluationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_self_evaluation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    redis = Redis.new
    a = Resque.new
    @self_evaluations = SelfEvaluation.all
    respond_with(@self_evaluations)
  end

  def show
    respond_with(@self_evaluation)
  end

  def new
    @self_evaluation = SelfEvaluation.new
    respond_with(@self_evaluation)
  end

  def edit
  end

  def create
    @self_evaluation = SelfEvaluation.new(self_evaluation_params)
    @self_evaluation.user_id = current_user.id
    @self_evaluation.save
    respond_with(@self_evaluation)
  end

  def update
    @self_evaluation.update(self_evaluation_params)
    binding.pry
    respond_with(@self_evaluation)
  end

  def destroy
    @self_evaluation.destroy
    respond_with(@self_evaluation)
  end

  private
    def set_self_evaluation
      @self_evaluation = SelfEvaluation.find(params[:id])
    end

    def self_evaluation_params
      params.require(:self_evaluation).permit(:mood_rating, :energy_rating, :drink, :smoke, :worked_out, :meds, :comments, :time_logged, :hours_slept, :breakfast, :lunch, :dinner, :snacks_text, :exercise)
    end
end
