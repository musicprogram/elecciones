class Representantem < ActiveRecord::Base
    acts_as_votable
    validates :nombre, presence: true
    
    has_attached_file :foto, :default_url => "/representantems"
  	do_not_validate_attachment_file_type :foto
  
  
    def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |representantem|
	      csv << representantem.attributes.values_at(*column_names)
	    end
	  end
	end
  	
end
