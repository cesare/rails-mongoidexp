class MongoidSerializer < ActiveJob::Serializers::ObjectSerializer
  def serialize?(object)
    return false unless object.is_a? Mongoid::Document
    return false unless object.respond_to? :id
    return false unless object.class.respond_to? :find

    true
  end

  def serialize(document)
    attributes = {
      "class" => document.class.name,
      "id" => document.id.to_s,
    }
    super(attributes)
  end

  def deserialize(hash)
    id = hash["id"]
    clazz = hash["class"].constantize

    clazz.find(id)
  end
end
