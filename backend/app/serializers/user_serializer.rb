class UserSerializer < ActiveModel::Serializer
  attributes :id, :userName, :city
  has_many :user_adventures
  # has_many :comments
end
