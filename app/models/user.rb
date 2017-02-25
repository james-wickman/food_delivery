class User < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://joseph-ministries.com/wp-content/uploads/2015/09/default-avatar.jpg"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	has_many :orders, dependent: :destroy

  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
