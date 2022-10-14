# frozen_string_literal: true

module PostService
  module Crud
    class Destroy < ApplicationService
      option :record, type: Types.Instance(Record)

      def call
        ActiveRecord::Base.transaction(requires_new: true) do
          yield call_destroy_record
        end
      end

      private

      def call_destroy_record
        if record.destroy
          Success(record)
        else
          Failure([:error, record.errors])
        end
      end
    end
  end
end
