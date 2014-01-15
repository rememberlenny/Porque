class QuizOrder < ActiveRecord::Base
  has_many :questions
  belongs_to :scenario
end
