class Immortals < Formula
  desc "Collection of CLI tools including todo and currency converter"
  homepage "https://github.com/nurmuhammad701/immortals_brew"
  url "https://github.com/nurmuhammad701/immortals_brew/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cbe64c324f9f70aa84a7438fe0d0de63f1d26bf793ce1b9f2ccd712a3e8dfa77"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"
    
    system "ls", "-la"  # This will list the contents of the current directory
    system "cat", "go.mod"  # This will show the contents of go.mod if it exists
    
    cd buildpath do
      system "go", "build", "-o", bin/"todo", "./todos"
      system "go", "build", "-o", bin/"currency", "./Currency"
    end
  end

  test do
    system "#{bin}/todo", "--help"
    system "#{bin}/currency", "--help"
  end
end