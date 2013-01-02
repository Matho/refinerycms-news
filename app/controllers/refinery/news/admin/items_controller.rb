module Refinery
  module News
    module Admin
      class ItemsController < ::Refinery::AdminController

        crudify :'refinery/news/item', :xhr_paging => true

      end
    end
  end
end
