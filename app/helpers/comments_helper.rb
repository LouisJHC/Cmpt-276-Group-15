module CommentsHelper
    def valid  
        !content.blank?
    end
end