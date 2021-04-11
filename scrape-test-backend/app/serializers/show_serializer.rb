class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :sources
end