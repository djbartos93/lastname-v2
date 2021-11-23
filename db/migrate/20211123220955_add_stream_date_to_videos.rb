class AddStreamDateToVideos < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :stream_date, :date
  end
end
