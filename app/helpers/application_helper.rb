module ApplicationHelper
   def user_avatar(user, size = 150)
    
    if user && user.profile && user.profile.avatar_url(size).present?
      return user.profile.avatar_url(size) unless user
    end
    
      initial = if user.username.present?
        user.username.first.upcase
        
      elsif user.email.present?
        
        user.email.first.upcase
      
      end
      "https://ui-avatars.com/api/?name=#{initial}&background=random&size=#{size}"
    end
    
end