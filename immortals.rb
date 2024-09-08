class Immortals < Formula
    desc "Collection of CLI tools including todo and currency converter"
    homepage "https://github.com/nurmuhammad701/immortals_brew"
    url "https://github.com/nurmuhammad701/immortals_brew/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "a24998a0be8aee4d6f2b955e77ddb0c9a65095885762c6522a82e0c8c82bf0c1"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"todo", "./todos/main.go"
      system "go", "build", "-o", bin/"currency", "./Currency/currency.go"
    end
  
    test do
      system "#{bin}/todo", "--help"
      system "#{bin}/currency", "--help"
    end
  end