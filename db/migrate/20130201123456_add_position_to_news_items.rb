class AddPositionToNewsItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :position, :integer
  end
end
