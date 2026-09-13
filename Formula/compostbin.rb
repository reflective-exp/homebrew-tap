class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.6.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "913a31eee8c613dd6fd8813c0b6315c929d468b95de57d850fcd7624eed3c039"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
