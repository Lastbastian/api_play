class RemoteGem

    base_uri "rubygems.org/api/v1"

    attr_accesssor :name, :info, :version, :authors, :downloads

    def initialize(name, info, version, authors, downloads)
      self.name = name
      self.info = info
      self.version = version
      self.authors = authors
      self.downloads = downloads
    end

    def versions
      response = self.class.get("/versions/#{name}.json")
      if response.success?
        response
      else
        raise response.response
      end
    end

    def self.find(name)
      response = get("/gems/#{name}.json")
      if response.success?
        self.new(response["name"], response["info"], response["version"],
         response["authors"], response["downloads"])
      else
        raise response.response
      end
    end
  end
