module HasAdminStatus
  extend ActiveSupport::Concern

  def admin!
    $redis.set(User::ADMIN_STATUS_KEY, true)
  end

  def admin?
    ($redis.get(User::ADMIN_STATUS_KEY) || 'false').to_bool
  end
end