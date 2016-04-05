module PostsHelper
    def valid  
        !title.blank? &&  !post.blank?
    end
end
