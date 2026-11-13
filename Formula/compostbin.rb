class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.23.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "2ae1b61cd62fb305a204716e03c95b006138e945da7e0b7519d2dbf5a1951f72"
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
