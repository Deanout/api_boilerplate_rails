# frozen_string_literal: true

module Inputs
  module User
    class ResetPasswordInput
      include Swagger::Blocks

      swagger_component do
        schema :UserResetPasswordInput do
          key :required, %i[email client_id client_secret]

          property :email do
            key :type, :string
            key :example, 'test@test.com'
          end

          property :client_id do
            key :type, :string
            key :example, 'e7c8f8f0-e8e0-4b0f-b8b1-f8f8f8f8f8f8'
          end

          property :client_secret do
            key :type, :string
            key :example, 'e7c8f8f0-e8e0-4b0f-b8b1-f8f8f8f8f8f8'
          end
        end
      end
    end
  end
end
