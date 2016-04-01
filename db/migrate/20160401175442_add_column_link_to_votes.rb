class AddColumnLinkToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :link, :string
  end
end
