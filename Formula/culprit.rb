class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.0/culprit-0.3.0-macos-universal.tar.gz"
    sha256 "56a136494e5ba01a31cde01d5efac3c17e24e1f0c02cb9d4a8d6b54e191fc99b"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.0/culprit-0.3.0-linux-x64.tar.gz"
      sha256 "7c665d9108a0f9c033a80b606a838cf2639273a47b1c82211948c302a35edbe4"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.0/culprit-0.3.0-linux-arm64.tar.gz"
      sha256 "86487ff028923e90174c745d7eca0f342acc9e995c24d90721f23974cbd2e514"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
