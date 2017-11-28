class RecordingTag < ApplicationRecord
  belongs_to :tag
  belongs_to :recording
end
