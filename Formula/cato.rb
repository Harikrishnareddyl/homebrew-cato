class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.5/cato-macos-arm64-v0.3.5.tar.gz"
      sha256 "65d53c7fd2e047ff69339e386fccddf9783540254c60e3441183114290ef5e73"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.5/cato-macos-x64-v0.3.5.tar.gz"
      sha256 "4452bce241b4732d01150a3aebd827624108b2d91010777b86e0aed3e10da367"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.5/cato-linux-x64-v0.3.5.tar.gz"
      sha256 "38d7ca1893a52d03e584afbfc344a2c3a4da1fdfe8b9c380c2b11f9b39807560"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end