class User < ActiveRecord::Base

  # callback before_create to generate api_key and assign it to user-property api_key before saving user to database
  before_create :generate_uuid_api_key

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def generate_base64_api_key
    self.api_key = SecureRandom.base64(24)
  end

  def generate_uuid_api_key
    self.api_key = SecureRandom.uuid
  end

  def delete_api_key
    self.api_key = nil
  end
  
end
