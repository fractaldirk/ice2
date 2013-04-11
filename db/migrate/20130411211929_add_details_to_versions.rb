class AddDetailsToVersions < ActiveRecord::Migration
  def change
    add_column :versions, :deployed_at, :date
  end
end
