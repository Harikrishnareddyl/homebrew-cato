class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.0/cato-macos-arm64-v0.3.0.tar.gz"
      sha256 "1724d8ed61c3d7a591f25d148ed8b8c55d813af2e432451608c81ea06f9b6b71"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.0/cato-macos-x64-v0.3.0.tar.gz"
      sha256 "9020cac2e902d5906bf8ec8ceaafdf2be74b742133010a2a36856a82cbcb7d12"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.0/cato-linux-x64-v0.3.0.tar.gz"
      sha256 "4cfb8aa9c7b19273e4289b9a7fb933fd95aa866895eedd7446261f20b1b0e650"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end