# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :user

  # check that user id is present
  validates :user_id, presence: true

  # title is present and > 10 chars
  validates :title, length: { minimum: 10 }, presence: true

  # url is present and correctly formatted
  validates :url, format: {with: Regexp.new(URI::regexp(%w(http https)))}, presence: true
end
