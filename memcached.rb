require "vulcan/recipe"

class Memcached < Vulcan::Recipe

  url "http://memcached.googlecode.com/files/%%recipe%%-%%version%%.tar.gz"

  build do |prefix|
    run "./configure --prefix=#{prefix}"
    run "make install"
  end

  version "1.4.13" do
    md5 "6d18c6d25da945442fcc1187b3b63b7f"
  end

end
