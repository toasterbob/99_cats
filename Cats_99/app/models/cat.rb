require 'date'
# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ActiveRecord::Base

  validates :name, presence: true
  validates :color, presence: true
  validates :birth_date, presence: true
  validates :sex, presence: true

  has_many :requests,
  dependent: :destroy,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest

  def age
    birth = Date.parse("2014/05/19")
    now = Time.now.to_date
    age = now.year - birth.year
    # age_month = now.month - birth.month
    age
  end
end
