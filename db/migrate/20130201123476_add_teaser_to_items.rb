class AddTeaserToItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :teaser, :text
  end
end
