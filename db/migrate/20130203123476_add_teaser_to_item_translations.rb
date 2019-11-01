class AddTeaserToItemTranslations < ActiveRecord::Migration[4.2]
  def change
    add_column Refinery::News::Item::Translation.table_name, :teaser, :text
  end
end
