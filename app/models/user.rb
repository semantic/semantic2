class User < ActiveRecord::Base
  def self.create_from_oauth!(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
      user.dump = auth.to_json
      user.screen_name = auth["user_info"]["nickname"]
      user.avatar_url = auth["user_info"]["image"]
      user.location = auth["user_info"]["location"]
      user.description = auth["user_info"]["description"]
    end
  end
end

