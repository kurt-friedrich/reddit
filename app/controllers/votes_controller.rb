class VotesController < ApplicationController
  before_filter :require_user

  def create
    require_user
    @link = Link.find(params[:link_id])
    @link.votes.create(user: current_user)
    redirect_to :root
  end

  private

  def link_params
    params.require(:vote).permit(:link, :user)
  end

end
