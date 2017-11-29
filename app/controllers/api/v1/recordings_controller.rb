class Api::V1::RecordingsController < Api::V1::BaseController
  before_action :set_recording, only: [ :show ]

  def index
    @recordings = policy_scope(Recording)
  end

  def show
  end

  private

  def set_recording
    @recording = Recording.find(params[:id])
    authorize @recording  # For Pundit
  end

  # def recording_params
  #   params.require(:recording).permit(:tag)
  # end
end


