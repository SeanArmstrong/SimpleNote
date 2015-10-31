class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :notes
  has_many :categories

  after_create :create_basic_categories

  private 

  def create_basic_categories
    Category.create(name: "personal", user: self) 
    Category.create(name: "work", user: self) 
  end
end
