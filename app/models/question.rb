class Question < ActiveRecord::Base
  belongs_to :scenario
  has_many :answers
end
