class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.24.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "8e1de5a139d9f36a0b812e1ecc77c8032bb007503811a57d4e9e98be142e48c2"
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
