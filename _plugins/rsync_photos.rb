module Jekyll
  class RsyncPhotos < Generator
    def generate(site)
      system("mkdir -p _site");
      system("rsync --archive --delete _assets/ _site/assets");
    end
  end
end
