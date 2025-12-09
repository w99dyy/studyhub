module ApplicationHelper
   def user_avatar(user, size = 150)
    if user.profile

      user.profile.avatar_url(size)
    else
    "https://ui-avatars.com/api/?name=#{user.username.first}&background=random&color=fff&size=#{size}"
  end
end
end