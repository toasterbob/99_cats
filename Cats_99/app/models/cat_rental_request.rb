class CatRentalRequest < ActiveRecord::Base

  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: {
    in: ["APPROVED", "DENIED", "PENDING"],
    message: "%{status} is not valid"
  }
  # validates :status, presence: true

  belongs_to :cat,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :Cat

  def overlapping_requests

  end

  def overlapping_approved_requests

  end

end
