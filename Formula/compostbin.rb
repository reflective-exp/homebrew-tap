class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.22.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "e547dcff0c8007e737162d22c2e505e32959cc40a1e83137e343eb11bda7d060"
  end

  def install
    bin.install "compostbin"
    warn <<BREAKING
    `compostbin` versions < v1.0.0 do not guarantee image compatibility between
    minor versions. After upgrading, run:

        compostbin build --no-cache

    Breaking changes in configuration should be flagged by `compostbin doctor`,
    and _might_ be fixable with `compostbin doctor --fix`.

BREAKING
  end
end
