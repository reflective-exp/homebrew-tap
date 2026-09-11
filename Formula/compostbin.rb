class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.3.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "c2db955a3d550ffdd4a21ec611b8b815b8cc26ff35c84f5095a2cb4bc80f4906"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
