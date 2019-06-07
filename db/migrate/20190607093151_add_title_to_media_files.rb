class AddTitleToMediaFiles < ActiveRecord::Migration[5.2]
  def change
    add_column :media_files, :title, :string
  end
end
