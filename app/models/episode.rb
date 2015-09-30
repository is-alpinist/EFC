class Episode < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      
      episode_hash = row.to_hash
      episode = Episode.where(episode_num: episode_hash["episode_num"])
      
      if episode.count == 1
        episode.first.update_attributes(episode_hash)
      else
        Episode.create!(episode_hash)
      end #end if
    end #end foreach  
  end #end self.import
  
  def etc
    estimated_final_cost-cost_to_date
    end
  
  def var
    (budget + breakage) - estimated_final_cost
  end
  
  def self.total_cost_to_date
    Episode.sum(:cost_to_date)
  end
  
  def self.total_estimate_to_complete
    Episode.sum(:estimate_to_complete)
  end
  
  def self.total_estimated_final_cost
    Episode.sum(:estimated_final_cost)
  end
  
  def self.total_breakage
    Episode.sum(:breakage)
  end
  
  def self.total_budget
    Episode.sum(:budget)
  end
  
  def self.total_variance
    Episode.sum(:variance)
  end
  
end


