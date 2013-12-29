require 'spec_helper'

describe Scenario do

  let(:scenario) { FactoryGirl.create(:scenario) }
  before { @scenario = scenarios.build( name: "scenario name" ) }

  subject { @scenario }

  it { should respond_to(:name) }

  it { should be_valid }

end
