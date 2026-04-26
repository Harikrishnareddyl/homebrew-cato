class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.0/cato-macos-arm64-v0.2.0.tar.gz"
      sha256 "84231a6306f86af1fec5545baf90e5556d639912843fdfd2728cccc750cdc78d"
    end
    on_intel do
      # Intel build will be available from v0.2.1+
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.0/cato-macos-arm64-v0.2.0.tar.gz"
      sha256 "84231a6306f86af1fec5545baf90e5556d639912843fdfd2728cccc750cdc78d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.0/cato-linux-x64-v0.2.0.tar.gz"
      sha256 "b53c8953cc703945758508ef291b59bcf87bf617368af59c5d7288c609a5754d"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end
