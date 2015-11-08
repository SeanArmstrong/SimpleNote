class Note < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  before_save :ensure_valid_category

  private

  def ensure_valid_category
    if (self.category_id.nil?)
      self.category_id = self.user.categories.first
    elsif (user.categories.exclude?(self.category_id))
      self.category_id = self.user.categories.first
    end
  end
end
