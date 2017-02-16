class User < ActiveRecord::Base
  has_and_belongs_to_many :games

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :password_complexity
  def password_complexity
  	if password.present?
  		# --------------------------------------
  		# RegEx Notes
  		# --------------------------------------
  		# Contain a digit => (?=.*\d)
  		# Contain a lowercase => (?=.*([a-z]))
  		# Contain a uppercase => (?=.*([A-Z]))
  		# Contains a special character from 20-7E ascii value => ([\x20-\x7E])
  		# Must be at least 8 and no longer than 40 characters
			reg = /^(?=.*\d)(?=.*([a-z]))(?=.*([A-Z]))([\x20-\x7E]){8,40}$/
			if !password.match(reg)
				errors.add :password, "must include 1 uppercase, 1 lowercase, 1 digit, and 1 special character"
			end
  	end
  end # <-------end of password_complexity method
end 