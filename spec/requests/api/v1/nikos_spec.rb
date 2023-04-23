# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::Nikos' do
  describe 'GET /api/v1/nikos' do
    let(:niko) { create(:niko) }
    let(:headers) { sign_in niko.user }

    it 'index nikos' do
      get(api_v1_nikos_path(format: :json), headers:)
      assert_response_schema_confirm(200)
    end
  end
end
