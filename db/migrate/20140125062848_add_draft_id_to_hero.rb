class AddDraftIdToHero < ActiveRecord::Migration
  def change
  	add_column :heros, :draft_id, :integer
  end
end
