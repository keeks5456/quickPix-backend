class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :portrait
end
