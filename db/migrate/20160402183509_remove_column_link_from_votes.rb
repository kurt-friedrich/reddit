class RemoveColumnLinkFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :link
  end
end
