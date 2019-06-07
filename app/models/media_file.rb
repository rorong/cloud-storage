class MediaFile < ApplicationRecord
  mount_uploader :mediafile, MediaFileUploader

end
