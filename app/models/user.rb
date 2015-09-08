class User < ActiveRecord::Base
  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)

    user.nickname  = data.info.nickname
    user.image_url = data.info.image
    user.bio       = data.info.bio
    user.token     = data.credentials.token
    user.name      = data.info.name
    user.save

    user
  end
end
