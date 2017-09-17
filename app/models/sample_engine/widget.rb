module SampleEngine
  class Widget < ApplicationRecord
    validates :name, presence: true
  end
end
