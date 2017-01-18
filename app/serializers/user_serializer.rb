# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :videos

  def riffs
    object.riffs.pluck(:id)
  end
end
