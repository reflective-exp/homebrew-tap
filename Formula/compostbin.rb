class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.8.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "9b2cb79ecbca8684e542e67746f3bf6e08d05abf5796241a4998326801c2b4df"
  end

  def install
    bin.install "compostbin"
    warn <<BREAKING

    `compostbin` v0.8.0 no longer depends on Apple's `container` CLI, and requires
    an image re-build before next use.

    To clean up old images:

        container stop -a
        container prune
        container image rm -a
        container system stop

BREAKING
  end
end
