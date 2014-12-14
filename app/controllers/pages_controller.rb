class PagesController < ApplicationController
  def welcome
    mood_total = 0
    energy_total = 0
    energy_count = 0
    evals_in_last_week = SelfEvaluation.where(created_at: (Time.now - 1.week)..Time.now)
    if evals_in_last_week.empty?
      @mood_avg = "No recent ratings"
      @energy_acg = "No recent ratings"
    else
      evals_in_last_week.each do |eval|
        mood_total += eval.mood_rating
        if eval.energy_rating
          energy_total += eval.energy_rating
          energy_count = energy_count + 1
        else
        end
      end
      @mood_avg = mood_total.to_f/evals_in_last_week.count
      @mood_avg_as_percent = @mood_avg*10
      @energy_avg = energy_total.to_f/energy_count
      @energy_avg_as_percent = @energy_avg*10
    end
    mood_total_2 = 0
    energy_total_2 = 0
    energy_count_2 = 0
    evals_2_weeks_ago = SelfEvaluation.where(created_at: (Time.now - 2.week)..(Time.now - 1.week))
    if evals_2_weeks_ago.empty?
      @mood_avg_7_to_14_days_ago = "No ratings"
      @energy_avg_7_to_14_days_ago = "No ratings"
    else
      evals_2_weeks_ago.each do |eval|
        mood_total_2 += eval.mood_rating
        if eval.energy_rating
          energy_total_2 += eval.energy_rating
          energy_count_2 = energy_count_2 + 1
        else
        end
      end
      @mood_avg_7_to_14_days_ago = mood_total_2.to_f/evals_2_weeks_ago.count
      @mood_avg_as_percent_7_to_14_days_ago = @mood_avg_7_to_14_days_ago*10
      @energy_avg_7_to_14_days_ago = energy_total_2.to_f/energy_count_2
      @energy_avg_as_percent_7_to_14_days_ago = @energy_avg_7_to_14_days_ago*10
    end
    binding.pry
  end
end
