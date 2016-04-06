class RemoveColumnsFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :link_id
    remove_column :votes, :user_id
  end
end
