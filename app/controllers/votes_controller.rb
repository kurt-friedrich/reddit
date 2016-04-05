class VotesController < ApplicationController
  before_filter :require_user

  def create
    require_user
    @link = Link.find(params[:link_id])
    @link.votes.create
    redirect_to :root
  end

end
