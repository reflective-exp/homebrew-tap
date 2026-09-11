class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.5.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "7155878c6e9cec889e85b42aed69eef0ab610b4498176bb936f858d61b2729d6"
  end

  depends_on "container"

  def install
    bin.install "compostbin"
  end
end
