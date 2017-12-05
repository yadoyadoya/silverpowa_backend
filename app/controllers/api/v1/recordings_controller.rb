class Api::V1::RecordingsController < Api::V1::BaseController
  before_action :set_recording, only: [ :show ]

  def index
    @recordings = policy_scope(Recording)
  end

  def show
  end

  def create
    user = User.find(params[:open_id])
    recording = Recording.new(recording_params)
    recording.user = user
    recording.save
  end

  private

  def set_recording
    @recording = Recording.find(params[:id])
    authorize @recording  # For Pundit
  end

  def recording_params
    params.require(:recording).permit(:tags_list)
  end
end


