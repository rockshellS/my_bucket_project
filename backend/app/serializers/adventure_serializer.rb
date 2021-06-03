class AdventureSerializer < ActiveModel::Serializer
    attributes :id, :title, :location, :description, :image
    # has_many :comments
end
