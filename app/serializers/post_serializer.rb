class PostSerializer < ActiveJob::Serializers::ObjectSerializer
  def serialize?(object)
    object.is_a? Post
  end

  def serialize(post)
    attributes = {
      "id" => post.id.to_s,
    }
    super(attributes)
  end

  def deserialize(hash)
    post_id = hash["id"]
    Post.find(post_id)
  end
end
