class Thought < ApplicationRecord
    belongs_to :log
    belongs_to :distortion
end
