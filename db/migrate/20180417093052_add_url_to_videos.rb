class AddUrlToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :url, :string, default: ''
  end
end
