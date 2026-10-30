class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.1/culprit-0.3.1-macos-universal.tar.gz"
    sha256 "d3312cf1cbb73e496986024c70d4e617e755f598c32e95437a1bdf8fee46f0f8"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.1/culprit-0.3.1-linux-x64.tar.gz"
      sha256 "90345088a7f167e7e89558f148a44e5436f1ca487761262d39c68a8bb0ba99cc"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.1/culprit-0.3.1-linux-arm64.tar.gz"
      sha256 "9cd2a5821bd480b2b20522babf0844134ea598f84811649dc97d575003c40631"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
