class RenameFolloweredIdColumnToRelationships < ActiveRecord::Migration[6.1]
  def change
    rename_column :relationships, :followered_id, :followed_id
  end
end
