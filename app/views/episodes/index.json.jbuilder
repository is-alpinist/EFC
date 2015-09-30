json.array!(@episodes) do |episode|
  json.extract! episode, :id, :episode_num, :cost_to_date, :estimate_to_complete, :estimated_final_cost, :budget, :variance
  json.url episode_url(episode, format: :json)
end
