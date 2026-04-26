class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.1/cato-macos-arm64-v0.2.1.tar.gz"
      sha256 "273696c930cce6da2e5e6bd1b8bfc6e12a529c27c44b8436b20bbba86fa7d9fe"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.1/cato-macos-x64-v0.2.1.tar.gz"
      sha256 "64a5895a710f08d6aa2cdf9647170e7c97d83c5ec5f4cd1dd3797f326ecc732e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.1/cato-linux-x64-v0.2.1.tar.gz"
      sha256 "408c1356e77566ad1ec340691dc5debafc796d0a65085c35e3273db29495138f"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end