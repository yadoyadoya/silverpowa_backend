class Api::V1::ListenersController < Api::V1::BaseController
  # acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_listener, only: [:show]

  def index
    @listeners = policy_scope(Listener)
  end


  def show
  end

  def create
    @listener = Listener.new(listener_params)
    authorize @listener
    if @listener.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_listener
    @listener = Listener.find(params[:id])
    authorize @listener
  end

  def listener_params
    params.require(:listener).permit(:recording_id, :user_id)
  end
end
