class ApplicationController < ActionController::Base
     before_action :set_query

     before_action :record_page_view

     def record_page_view
       ActiveAnalytics.record_request(request)
     end

     def set_query 
          @query = Post.ransack(params[:q])
     end
end
