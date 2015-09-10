# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
     :omniauthable, :omniauth_providers => [:instagram, :twitter]

  acts_as_messageable

  def mailboxer_email(object)
    email
  end

  after_create :send_notification

  def send_notification
  	AdminMailer.new_user(self).deliver
  end

  def self.find_or_create_from_auth_hash(auth_hash)
        user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
        user.update(
          username: auth_hash.info.name
        )
        user
  end

end



























