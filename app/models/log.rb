class Log < ApplicationRecord
  belongs_to :user
  has_many :log_emotions
  has_many :emotions, through: :log_emotions
  has_many :log_sub_emotions
  has_many :sub_emotions, through: :log_sub_emotions
  has_many :thoughts


  
    def self.createLog(params, user)
        ################## LOG ###########################
        log = Log.create(outcome: params[:outcome], event: params[:event],user_id: user.id)
        
        ################# EMOTIONS ###########################
        params[:emotions].each do |e|
            sub_emotion = SubEmotion.find(e["subEmotionId"])
            LogEmotion.create(log_id: log.id, emotion_id: sub_emotion.emotion_id)
            LogSubEmotion.create(sub_emotion_id: sub_emotion.id, log_id: log.id)
        end
        ########### THOUGHTS #################
        params[:thoughts].each do |t|
            n_thought = t[:negative][:thought]
            n_before = t[:negative][:before]
            n_after = t[:negative][:after]
            p_thought = t[:positive][:thought]
            p_belief = t[:positive][:belief]
            distortion = Distortion.find(t[:distortion][:id])
            thought = Thought.create(
                log_id: log.id,
                n_thought: n_thought,
                n_before: n_before,
                n_after: n_after,
                p_thought: p_thought,
                p_belief: p_belief,
                distortion: distortion
            )
        end
        return log
    end
  
end
