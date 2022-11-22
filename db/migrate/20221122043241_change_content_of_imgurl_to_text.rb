class ChangeContentOfImgurlToText < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :avata_url, :text
  end
end
