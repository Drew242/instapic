class User < ActiveRecord::Base
  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)

    user.nickname  = data.info.nickname
    user.image_url = data.info.image
    user.bio       = data.info.bio
    user.website   = data.info.website
    user.token     = data.credentials.token
    user.name      = data.info.name
    user.provider  = data.provider
    user.save

    user
  end

  def client
    @client = Instagram.client(access_token: token)
  end

  def recent_posts
    client.user_recent_media
  end

  def feed
    client.user_media_feed
  end

  def likes
    client.like_media
  end
end
