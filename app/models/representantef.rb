class Representantef < ActiveRecord::Base
    acts_as_votable
    validates :nombre, presence: true
    
    has_attached_file :foto, :default_url => "/representantefs"
  	do_not_validate_attachment_file_type :foto
end
