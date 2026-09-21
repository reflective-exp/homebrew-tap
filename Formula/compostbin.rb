class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.9.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "49cc3078f47de29e6025294bf6e825fda60a71ce3d7f7a92ba83e6f8134e0fd0"
  end

  def install
    bin.install "compostbin"
    warn <<BREAKING
    `compostbin` > v0.8.x no longer depends on Apple's `container` CLI, and requires
    an image re-build before next use.

    To clean up old images:

        container stop -a
        container prune
        container image rm -a
        container system stop

BREAKING
  end
end
