class AddAttachmentFotoToRepresentantems < ActiveRecord::Migration
  def self.up
      add_column :representantems, :foto_file_name,    :string
      add_column :representantems, :foto_content_type, :string
      add_column :representantems, :foto_file_size,    :integer
      add_column :representantems, :foto_updated_at,   :datetime
    end
  
    def self.down
     remove_column :representantems, :foto_file_name
     remove_column :representantems, :foto_content_type
     remove_column :representantems, :foto_file_size
     remove_column :representantems, :foto_updated_at
   end
end
