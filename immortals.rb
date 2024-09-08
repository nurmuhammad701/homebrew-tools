class Immortals < Formula
    desc "Collection of CLI tools including todo and currency converter"
    homepage "https://github.com/nurmuhammad701/immortals_brew"
    url "https://github.com/nurmuhammad701/immortals_brew/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "3aa2f78413ab1ef437a9899d5042c94d5cde351fa6264b88074d7cbb90ad4eca"
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