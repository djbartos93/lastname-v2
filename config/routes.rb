Rails.application.routes.draw do
  devise_for :users
  resources :videos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  case Rails.configuration.upload_server
  when :s3
    # By default in production we use s3, including upload directly to S3 with
    # signed url.
    mount Shrine.presign_endpoint(:cache) => "/s3/params"
  when :s3_multipart
    # Still upload directly to S3, but using Uppy's AwsS3Multipart plugin
    mount Shrine.uppy_s3_multipart(:cache) => "/s3/multipart"
  when :app
    # In development and test environment by default we're using filesystem storage
    # for speed, so on the client side we'll upload files to our app.
    mount Shrine.upload_endpoint(:cache) => "/upload"
  end
  mount VideoUploader.derivation_endpoint => "/derivations/video"


  root to: 'dashboard#index'

  get '/archive_stream/:archive', to: 'dashboard#single_archive'
end
