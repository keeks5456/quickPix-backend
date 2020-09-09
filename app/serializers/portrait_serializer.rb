class PortraitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_url, :description, :like, :user_id, :comments
  # belongs_to: :user_id
  # has_many: :comments
end