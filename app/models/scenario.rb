class Scenario < ActiveRecord::Base
  has_many :questions
  has_many :intro
  has_one :quiz_order
end
