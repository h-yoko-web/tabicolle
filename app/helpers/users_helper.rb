# frozen_string_literal: true

module UsersHelper
  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase) # [why]GravatarはユーザーのメールアドレスをMD5でハッシュ化したものをidとして､URLに組み込んでいるから
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end
end
