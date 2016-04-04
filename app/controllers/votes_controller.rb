class VotesController < ApplicationController

  def index
  end

  def create
    @link = Link.find(params[:link_id])
    @link.votes.create
    redirect_to :root
  end

  def show
    Vote.new(vote_params).save!
    redirect_to(links_path)
  end

  private
  def vote_params
    params.require(:vote).permit(:link_id)
  end

end
