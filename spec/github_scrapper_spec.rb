require 'spec_helper'

describe GithubScrapperApi do

  def app
    GithubScrapperApi
  end

  describe 'PUT job' do
    before do
      ScrappJob.stub_chain(:new, :async, :perform) { nil }
    end

    subject { put 'job/login', mock_params }

    context 'wrong params' do
      let(:mock_params) { nil }
      it { expect(subject.status).to eq(400) }
    end

    context 'correct params' do
      let(:mock_params) { { login: 'Wlojtek' } }
      it { expect(subject.status).to eq(200) }
    end
  end

  describe 'GET ping' do
    it 'returns pong' do
      get '/ping'
      expect(last_response.body).to eq("\"pong\"")
    end
  end

end
