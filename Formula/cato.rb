class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-macos-arm64-v0.2.3.tar.gz"
      sha256 "86fdaa355dcf170c8e20d6b6d32b2e9575e3d299326a70d8972a7deb3f80d522"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-macos-x64-v0.2.3.tar.gz"
      sha256 "9de8a7dd12aece1c9a469418072da1a38d900e94d81031fb6123b1f3e4bcbcbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-linux-x64-v0.2.3.tar.gz"
      sha256 "a93eab4961e99e81eb6092440619d70e07f673df246d6de8248ca9f88b338f32"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end