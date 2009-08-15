# Methods added to this helper will be available to all templates in the application.

require "digest/md5"

module ApplicationHelper

  def url_for_gravatar(email)
    gravatar_id = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar.php?gravatar_id=#{gravatar_id}"
  end

end
