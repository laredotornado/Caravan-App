class Stop < ApplicationRecord
  has_many :issues
  has_and_belongs_to_many :lines
  belongs_to :twin_stop, class_name: "Stop", required: false

  def original
    twin_stop || self
  end
end
