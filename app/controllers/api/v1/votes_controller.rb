class Api::V1::VotesController < Api::V1::BaseController
  # acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_vote, only: [:show]

  def index
    @votes = policy_scope(Vote)
  end


  def show
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    authorize @vote
    if @vote.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_assignment
    @vote = Vote.find(params[:id])
    authorize @vote
  end

  def vote_params
    params.require(:vote).permit(:counter)
  end
end
