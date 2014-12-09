class PagesController < ApplicationController
  def welcome
    total = 0
    evals_in_last_week = SelfEvaluation.where(created_at: (Time.now - 1.week)..Time.now)
    evals_in_last_week.each do |eval|
      total += eval.mood_rating
    @mood_avg = total.to_f/evals_in_last_week.count
    end
  end
end
