class UserAdventureSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :adventure_id
  belongs_to :adventure
  
end
