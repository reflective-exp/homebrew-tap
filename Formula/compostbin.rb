class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.1.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "bfd5e57b48c5c03de967d4e8c9890e768a3c3760e3dd35894640a45e0ef2bccd"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
