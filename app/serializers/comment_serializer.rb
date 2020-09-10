class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :portrait
  belongs_to :portrait 
end
