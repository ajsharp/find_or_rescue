module FindOrRescue
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    
    def find_or_rescue(id)
      begin
        find(id)
      rescue ActiveRecord::RecordNotFound
        false
      end
    end
  end
end
