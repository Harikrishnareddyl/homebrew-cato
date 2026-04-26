class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.7/cato-macos-arm64-v0.3.7.tar.gz"
      sha256 "40b91ab3c6cd8d9fd5ca201ee397b0b9bde1759b568805a3374857ca53409d3c"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.7/cato-macos-x64-v0.3.7.tar.gz"
      sha256 "349ffa28f3f9c23015ecb5ea64a2b1a8f523f16020099ba3c3b22c942c2c122d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.7/cato-linux-x64-v0.3.7.tar.gz"
      sha256 "a9b1b961c2ac395b57cecf7f6c84e8c7d10eddf9faced56c17983e2984afa793"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end