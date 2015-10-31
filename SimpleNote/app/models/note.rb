class Note < ActiveRecord::Base
  belongs_to :user
  has_one :categories, through: :user
end
