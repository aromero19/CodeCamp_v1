class Reviewanswer < ApplicationRecord
    belongs_to :reviews
    belongs_to :questions
    belongs_to :answers
end
