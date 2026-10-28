class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.1.2/culprit-0.1.2-macos-universal.tar.gz"
    sha256 "e2fd4f9d5b4ac854b9988a9cf67dcf332a1fe62083e511ecd7c8a9478f104f46"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.1.2/culprit-0.1.2-linux-x64.tar.gz"
      sha256 "671f835a226b8ca376291847ad4eb4b7720ef96c51310877a6e067c5361b4bc0"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.1.2/culprit-0.1.2-linux-arm64.tar.gz"
      sha256 "b326520ea7cfca5e54be405b195a34f848f20848f5f4ccf8ef367771a9bbd593"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
