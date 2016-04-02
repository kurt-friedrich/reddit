class VotesController < ApplicationController

  def create
    Vote.new(vote_params).save!
  end

  private
  def vote_params
    params.require(:vote).permit(:link_id)
  end

end
