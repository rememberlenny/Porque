require 'spec_helper'

describe "Pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading ) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'IOM Web Simulator'}

    it_should_behave_like "all static pages"

    it { should have_selector('h1', text: heading ) }

    describe 'Scenario' do
      let!(:m1) { FactoryGirl.create(:scenario) }

      it { should have_content(m1.name) }
      it { should have_content(m1.description) }
    end

  end



end
