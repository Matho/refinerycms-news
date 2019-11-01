class AddTeaserToItems < ActiveRecord::Migration[4.2]
  def change
    add_column Refinery::News::Item.table_name, :teaser, :text
  end
end
