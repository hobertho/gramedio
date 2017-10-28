class User < ApplicationRecord
  include HasAdminStatus
  has_secure_password

  validates_uniqueness_of :username, :email

  ADMIN_STATUS_KEY = 'admin_status'.freeze
end
