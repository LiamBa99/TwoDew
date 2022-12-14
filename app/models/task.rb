# frozen_string_literal: true

class Task < ApplicationRecord
  MAX_TITLE_LENGTH = 125
  validates :title, presence: true, length: { maximum: MAX_TITLE_LENGTH }
  validates :list_id, presence: true
  validates :due_date, presence: true
end
