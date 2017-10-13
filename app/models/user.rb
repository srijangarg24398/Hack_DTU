class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" } ,uniqueness: true
 validates :First_Name , :Last_Name , presence: true


end
