class Note < ActiveRecord::Base
  belongs_to :user

  before_save :ensure_category


  private

  def ensure_category
    # Is Category id associated with the user
    # Has a category been set
  end
end
