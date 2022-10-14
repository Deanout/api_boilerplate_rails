# frozen_string_literal: true

module PostService
  module Crud
    class Create < ApplicationService
      option :params, type: Types::Hash

      def call
        ActiveRecord::Base.transaction(requires_new: true) do
          yield call_create_record
        end
      end

      private

      def call_create_record
        record = Post::Crud.new(params)

        if record.save
          Success(record)
        else
          Failure([:error, record.errors])
        end
      end
    end
  end
end
