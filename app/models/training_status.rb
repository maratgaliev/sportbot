class TrainingStatus < ApplicationRecord
  belongs_to :training
  before_save :set_status

  private

  def set_status
    self.completed = true
  end
end
