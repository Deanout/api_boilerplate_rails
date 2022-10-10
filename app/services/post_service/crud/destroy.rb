# frozen_string_literal: true

class PostService::Crud::Destroy < ApplicationService
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

