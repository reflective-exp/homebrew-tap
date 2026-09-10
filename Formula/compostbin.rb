class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.2.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "48eb73add7d9e029693d41faf763969c362a831d8e03e3e668688aad19c4b59d"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
