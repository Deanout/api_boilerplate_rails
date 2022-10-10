# frozen_string_literal: true

require 'test_helper'

module DoorkeeperService
  module AccessTokens
    class CreateTest < ActiveSupport::TestCase
      attr_reader :doorkeeper_application, :user

      def setup
        @doorkeeper_application = create(:doorkeeper_application)
        @user = create(:user)
      end

      test 'should create doorkeeper access token' do
        assert_difference 'Doorkeeper::AccessToken.count', 1 do
          service = DoorkeeperService::AccessTokens::Create.new(doorkeeper_application:, user:).call

          assert service.success?
        end
      end

      test 'should fail if something goes wrong' do
        Doorkeeper::AccessToken.any_instance.expects(:save).returns(false)

        assert_no_difference 'Doorkeeper::AccessToken.count' do
          service = DoorkeeperService::AccessTokens::Create.new(doorkeeper_application:, user:).call

          assert service.failure?
        end
      end
    end
  end
end
