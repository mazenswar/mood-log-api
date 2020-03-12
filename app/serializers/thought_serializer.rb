class ThoughtSerializer < ActiveModel::Serializer
  attributes(
  :id,
  :n_thought,
  :n_before,
  :n_after,
  :p_thought,
  :p_belief
)
belongs_to :distortion
end
