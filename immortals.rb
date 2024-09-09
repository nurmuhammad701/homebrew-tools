class Immortals < Formula
  desc "Collection of CLI tools including todo, currency converter, calculator, and file manager"
  homepage "https://github.com/nurmuhammad701/immortals_brew"
  url "https://github.com/nurmuhammad701/immortals_brew/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "12183f812cdd41c170877787c0c72ef564669a77d6f3e046b36a9c67ed17540a"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"
    
    system "go", "build", "-o", bin/"todo", "./todos"
    system "go", "build", "-o", bin/"currency", "./Currency"
    system "go", "build", "-o", bin/"calculator", "./calculator"
    system "go", "build", "-o", bin/"filemanager", "./files"
  end

  test do
    system "#{bin}/todo", "--help"
    system "#{bin}/currency", "--help"
    system "#{bin}/calculator", "--help"
    system "#{bin}/filemanager", "--help"
  end
end