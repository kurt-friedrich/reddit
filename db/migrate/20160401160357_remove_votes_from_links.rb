class RemoveVotesFromLinks < ActiveRecord::Migration
  def change
    remove_column :links, :votes
  end
end
