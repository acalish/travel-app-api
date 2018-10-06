# frozen_string_literal: true

class TripSerializer < ActiveModel::Serializer
  attributes :id, :destination, :start_date, :end_date, :name
  belongs_to :user
end
