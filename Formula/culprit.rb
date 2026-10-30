class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.3.3"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.3/culprit-0.3.3-macos-universal.tar.gz"
    sha256 "0d01512af5ef2b3d62b8f774f241edc0f2d0d020b87f60450abfd2d039cecf85"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.3/culprit-0.3.3-linux-x64.tar.gz"
      sha256 "52ae0ee28dd85ff7af4127c0bbab5b48a356fe49c82da9c37b70d97ff0d102f8"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.3.3/culprit-0.3.3-linux-arm64.tar.gz"
      sha256 "334af0fa7a5d8ae5ba687d098b3b6464237d051d38f69d263c54d125dfb6a7be"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
