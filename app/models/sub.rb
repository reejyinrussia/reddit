class Sub < ApplicationRecord
  has_many :topics, dependent: :destroy
  validates_presence_of :name

  def name
    "#{name}"
  end


end
