class User < ApplicationRecord
	has_many :books, dependent: :destroy
	has_many :reviews, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   	has_attached_file :avatar, styles: {profile_pic: "600x600>", medium: "300x300>", thumb: "40x40#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	# validates :id_number, presence: true, length: {minimum: 13, maximum: 13}
	validates :username, presence: true


	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :birthday, presence: true
	validates :email, presence: true
	 

  validates_uniqueness_of :username 
end
