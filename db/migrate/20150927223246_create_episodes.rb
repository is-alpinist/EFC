class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :episode_num
      t.decimal :cost_to_date
      t.decimal :estimate_to_complete
      t.decimal :estimated_final_cost
      t.decimal :budget
      t.decimal :breakage
      t.string  :breakage_notes
      t.decimal :fractional
      t.string  :fractional_notes
      t.decimal :variance
      t.timestamps null: false
    end
  end
end
