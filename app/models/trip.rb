# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :user
  validates :destination, :start_date, :end_date, :name, presence: true
end
