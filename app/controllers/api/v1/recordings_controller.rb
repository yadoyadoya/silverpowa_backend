class Api::V1::RecordingsController < Api::V1::BaseController
  def index
    @recordings = policy_scope(Recording)   #pundit.
  end
end
