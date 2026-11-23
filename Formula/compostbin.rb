class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.29.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "1174d22ffe6019289c8cf07b0b74c1f93c2d9ea1189af1dd21e730178e108be1"
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
