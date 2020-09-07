class PortraitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_url, :description, :like, :user_id, :comments
end
