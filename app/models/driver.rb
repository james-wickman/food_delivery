class Driver < ApplicationRecord
	has_attached_file :driver_avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://joseph-ministries.com/wp-content/uploads/2015/09/default-avatar.jpg"
  	validates_attachment_content_type :driver_avatar, content_type: /\Aimage\/.*\z/
	has_many :orders

  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def has_job
	  if self.orders.where(completed: false).first
	    true
	  else
	  	false
	  end
	end

	def get_current_job
	  self.orders.where(completed: false).first
	end
end
