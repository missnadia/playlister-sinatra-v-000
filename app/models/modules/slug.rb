module Slug
  module ClassMethods
    def self.find_by_slug(slug)
      self.all.find{ |c| c.slug == slug}
    end
  end

  module InstanceMethods
    def slug
      name.downcase.gsub(" ","-")
    end
  end
end
