class Author
  include Mongoid::Document
  include GlobalID::Identification

  field :name, type: String
end
