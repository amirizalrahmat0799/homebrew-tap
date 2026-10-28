class Culprit < Formula
  desc "Terminal log viewer that groups stack traces and points at your code"
  homepage "https://github.com/amirizalrahmat0799/culprit"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.2.0/culprit-0.2.0-macos-universal.tar.gz"
    sha256 "8738e0fb7e4dccca84c24407b908c9a824179e4dedd3bd62b21ec0c48e41d209"
  end

  on_linux do
    on_intel do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.2.0/culprit-0.2.0-linux-x64.tar.gz"
      sha256 "469b350afb9295fb13b88106cf29419f6f07dd6fb954a1b7f445d3520de3c90d"
    end
    on_arm do
      url "https://github.com/amirizalrahmat0799/culprit/releases/download/v0.2.0/culprit-0.2.0-linux-arm64.tar.gz"
      sha256 "e5c82ec2306dda49524c399281e2ecbace353c56052506f08c58ae0ac95b7aff"
    end
  end

  def install
    bin.install "culprit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/culprit --version")
  end
end
