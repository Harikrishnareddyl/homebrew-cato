class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.8/cato-macos-arm64-v0.3.8.tar.gz"
      sha256 "aaccc88e16e8d3ffcbea0256049f6e731212ab34e0330ee4b0dcdce660cbbca0"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.8/cato-macos-x64-v0.3.8.tar.gz"
      sha256 "27528d700e0c99ec69ac652831a6907d7e5bbd927bfb8887e03c9e680d0f142f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.8/cato-linux-x64-v0.3.8.tar.gz"
      sha256 "a180a08793302c512eee901ea251b9a0bcf81eb2f622952fc23e68d48e810b35"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end