class Question < ApplicationRecord
    has_many :answers
    has_many :reviewanswers
    has_many :assessments
end
