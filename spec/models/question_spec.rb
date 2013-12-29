require 'spec_helper'

describe Question do

  let(:scenario) { FactoryGirl.create(:scenario) }
  before { @question = scenario.questions.build(media: "test.jpg", question: "hello?") }

  subject { @question }

  it { should respond_to(:media) }
  it { should respond_to(:question) }
  it { should respond_to(:scenario_id) }
  it { should respond_to(:scenario) }
  its(:scenario) { should eq scenario }

  it { should be_valid }

  describe "when scenario is not present" do
    before { @question.scenario_id = nil }
    it { should_not be_valid }
  end

end
