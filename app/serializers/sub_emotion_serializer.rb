class SubEmotionSerializer < ActiveModel::Serializer
  attributes :id, :name, :emotion_name

  def emotion_name
    object.emotion.name
  end
end
