class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.28.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "cd1b119da8f6372666488dfc0cd3c9a26a65a47937c2b7b7657e13e76e15c841"
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
