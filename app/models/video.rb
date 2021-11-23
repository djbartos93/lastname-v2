class Video < ApplicationRecord
  include VideoUploader::Attachment(:video)

end
