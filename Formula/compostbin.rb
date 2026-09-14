class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.7.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "ea0815d3d90cc1a48f6a6354d007d9bfdcb76f89836e5fc0b98d1e690b56c48f"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
