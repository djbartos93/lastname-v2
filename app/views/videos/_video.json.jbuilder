json.extract! video, :id, :name, :video_data, :created_at, :updated_at
json.url video_url(video, format: :json)
