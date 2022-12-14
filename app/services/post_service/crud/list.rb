# frozen_string_literal: true

class PostService::Crud::List < ApplicationService
  option :pagination, type: Types.Instance(ParameterObject::Pagination)
  option :query, type: Types.Instance(ParameterObject::Query)

  def call
    Success(records.ransack(query.query).result.page(pagination.page).per(pagination.per_page))
  end
end
