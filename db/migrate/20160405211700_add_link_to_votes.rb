class AddLinkToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :link, index: true, foreign_key: true
  end
end
