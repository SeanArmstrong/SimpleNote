class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :notes
  has_many :categories

  after_create :create_basic_categories

  def categories
    Category.where(user: self)
  end

  private 

  def create_basic_categories
    Category.create(name: "general", user: self) 
    Category.create(name: "personal", user: self) 
    Category.create(name: "work", user: self) 
  end
end
