class Answer < ApplicationRecord
    belongs_to :question
    has_many :reviewanswers
    has_many :assessments
end
