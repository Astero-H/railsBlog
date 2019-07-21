class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: {
    message: "Vous devez renseigner votre prénom."
  }
  validates :last_name, presence:{
    message: "Vous devez renseigner votre nom."
  }
    
  has_many :posts
end
