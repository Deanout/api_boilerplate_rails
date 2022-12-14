# frozen_string_literal: true

class PostService::Crud::Update < ApplicationService
  option :record, type: Types.Instance(Record)
  option :params, type: Types::Hash

  def call
    ActiveRecord::Base.transaction(requires_new: true) do
      yield call_update_record
    end
  end

  private

  def call_update_record
    if record.update(params)
      Success(record)
    else
      Failure([:error, record.errors])
    end
  end
end
