module Refinery
  module News
    module Extensions
      module PagesController

        def self.included(base)
          base.class_eval do
            around_filter :wrap_home_action, :only => :home


            def wrap_home_action
              # this is only for fragment caching to create 1 cache file version for first page
              params[:page].blank? ? params[:page] = 1 : params[:page]

              if request.xhr?
                respond_to do |format|
                  format.js { render :partial=> "/refinery/news/items/index"}
                end
              else
                home
              end
            end

          end
        end
      end
    end
  end
end
