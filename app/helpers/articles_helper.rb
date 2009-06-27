module ArticlesHelper
  def status_text(article)
     if article.published
       return "Published"
     else
       return "Draft"
     end
   end
end
