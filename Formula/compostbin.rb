class Compostbin < Formula
  desc "Compostbin"
  homepage "https://github.com/reflective-exp/compostbin"
  license "MIT"
  version "0.9.1"

  on_arm do
    url "https://github.com/reflective-exp/compostbin/releases/download/v#{version}/compostbin-darwin-arm64.tar.gz"
    sha256 "f11401cdf9d425f2106f6d4214852f4745ece1d9d577e179b0ddbe87fe6d9f3e"
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
