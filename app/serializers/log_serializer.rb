class LogSerializer < ActiveModel::Serializer
  attributes :id, :event, :outcome, :user
  # has_many :emotions
  has_many :sub_emotions
  has_many :thoughts
  

  def user
    {
      id: object.user.id,
      username: object.user.username
    }
  end
 
end
