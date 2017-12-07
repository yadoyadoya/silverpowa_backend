class Api::V1::RecordingsController < Api::V1::BaseController
  before_action :set_recording, only: [ :show ]

  def index
      @recordings = policy_scope(Recording)

      @recordings = @recordings.where(topic: params[:topic]) if params[:topic]
      @recordings = @recordings.all
  end

  def show
  end

  def create
    recording = Recording.new(recording_params)
    authorize(recording)

    # recording.user = user
    recording.save
    render json: recording
    # return recording
  end

      # @message = Message.create(message_params)
      # @message.meeting = Meeting.find(params[:meeting_id])
      # @message.save
      # render json: @message
      # # byebug
      # # @
      # # @message.recipient_id = @recipient.id
      # skip_authorization

  private

  # def index_by_topic
  #   filtered_topic = Recording.where(topic: params[:topic])
  # end



  def set_recording
    @recording = Recording.find(params[:id])
    authorize @recording  # For Pundit
  end

  def recording_params
    params.require(:recording).permit(:user_id, :duration, :content, :topic, :created_at)
  end
end





