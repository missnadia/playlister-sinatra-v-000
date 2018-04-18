module Slug
  class ClassMethods
    def self.find_by_slug(slug)
      self.all.find{ |c| c.slug == slug}
    end
  end

  class InstanceMethods
    def slug
      name.downcase.gsub(" ","-")
    end
  end
end
