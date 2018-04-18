module Slug

    def self.find_by_slug(slug)
      self.all.find{ |c| c.slug == slug}
    end

    def slug
      name.downcase.gsub(" ","-")
    end
end
