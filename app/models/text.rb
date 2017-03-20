class Text < ApplicationRecord
  validates_presence_of :title, :file
end
