module Refinery
  module News
    module Admin
      class ItemsController < ::Refinery::AdminController

        crudify :'refinery/news/item', :xhr_paging => true, :order=>"position DESC, created_at DESC"

        def copy
          @item = Refinery::News::Item.find(params[:id])
          @item.attributes['id'] = nil
          @item.title = ::I18n.t('refinery.news.copy_of') + @item.title
        end

        protected

        def item_params
          params.require(:item).permit(:title, :body,  :source, :publish_date, :expiration_date, :position, :image_id, :teaser)
        end

      end
    end
  end
end
