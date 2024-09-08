class Immortals < Formula
    desc "Collection of CLI tools including todo and currency converter"
    homepage "https://github.com/nurmuhammad701/immortals_brew"
    url "https://github.com/nurmuhammad701/immortals_brew/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"todo", "./todos"
      system "go", "build", "-o", bin/"currency", "./Currency"
    end
  
    test do
      system "#{bin}/todo", "--help"
      system "#{bin}/currency", "--help"
    end
  end