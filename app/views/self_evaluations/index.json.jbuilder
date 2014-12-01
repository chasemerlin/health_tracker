json.array!(@self_evaluations) do |self_evaluation|
  json.extract! self_evaluation, :id, :mood_rating, :energy_rating, :drink, :smoke, :worked_out, :meds, :comments, :hours_slept, :breakfast, :lunch, :dinner, :snacks_text, :exercise
  json.url self_evaluation_url(self_evaluation, format: :json)
end
