class AddTeaserToItemTranslations < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item::Translation.table_name, :teaser, :text
  end
end
