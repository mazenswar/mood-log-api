class EmotionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :sub_emotions

end
