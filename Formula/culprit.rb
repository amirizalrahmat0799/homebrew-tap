class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.2/culprit-0.3.2-macos-universal.tar.gz"
    sha256 "a8ca9e77bfc39ea422f85b1f3ae900fa7cecf11b388b34d763b58370dc4ce698"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.2/culprit-0.3.2-linux-x64.tar.gz"
      sha256 "581912bfa9340676266d33ce8e925cd2dcd5bc925589a5b8199dc335beb8e923"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.2/culprit-0.3.2-linux-arm64.tar.gz"
      sha256 "b8e64b9c7f812c21ac11dc3a4aa58d746e0cb6c3b6e5637c21bbfe6724514300"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
