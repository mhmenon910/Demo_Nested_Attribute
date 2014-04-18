class Cat < ActiveRecord::Base
validates_presence_of :name

def cat_name
    if self.new_record?
      "no name for your cat yet"
    else
      self.name unless self.blank?
    end
end

end
