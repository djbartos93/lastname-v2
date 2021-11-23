class VideoUploader < Shrine
  ALLOWED_TYPES  = %w[image/jpeg image/png image/webp video/*]
    plugin :derivation_endpoint, prefix: "derivations/image"
end
