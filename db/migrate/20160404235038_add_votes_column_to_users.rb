class AddVotesColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vote_id, :integer
  end
end
