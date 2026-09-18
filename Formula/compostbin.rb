class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.8.1"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "c00d8ef46f2918e80274c271601d3ff54b61ae3a70576d028d53653075953053"
  end

  def install
    bin.install "compostbin"
    warn <<BREAKING
    `compostbin` v0.8.x no longer depends on Apple's `container` CLI, and requires
    an image re-build before next use.

    To clean up old images:

        container stop -a
        container prune
        container image rm -a
        container system stop

BREAKING
  end
end
