class Question < ActiveRecord::Base
  belongs_to :scenario
  has_many :answer, dependent: :destroy

  validates :scenario_id, presence: true
end
