class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.11.0"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "fc2cdb423a8f820c127d25aa46349e9b8e443828ef005bfb0883a88ed3039599"
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
