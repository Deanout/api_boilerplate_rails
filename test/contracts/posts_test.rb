# frozen_string_literal: true

require 'test_helper'

class PostsContractTest < ActiveSupport::TestCase
  CONTRACT = 'give me your form instance'

  def validate(payload: {})
    CONTRACT.call(payload)
  end

  test 'validate#foo' do
    success?(validate(payload: { foo: 'test' }), :foo, CONTRACT)
    filled?(validate(payload: { foo: nil }), :foo, CONTRACT)
    filled?(validate(payload: { foo: '' }), :foo, CONTRACT)
    invalid?(validate(payload: { foo: 'invalid foo' }), :foo, CONTRACT)
  end

  test 'validate#bar' do
    success?(validate(payload: { bar: 'test' }), :bar, CONTRACT)
    filled?(validate(payload: { bar: nil }), :bar, CONTRACT)
    filled?(validate(payload: { bar: '' }), :bar, CONTRACT)
    min_size?(validate(payload: { bar: '12345' }), :bar, 6, CONTRACT)
  end
end
