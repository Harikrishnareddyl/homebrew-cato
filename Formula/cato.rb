class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.4/cato-macos-arm64-v0.2.4.tar.gz"
      sha256 "96ddefa5939adc32cd1e9bad5bc909719edd718f9fd497f4c582b2ee0d455d94"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.4/cato-macos-x64-v0.2.4.tar.gz"
      sha256 "0f1e8892ac2aa05d330756c55a0cf285fe8976914de2ead3d5bb1bd258d5d504"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.4/cato-linux-x64-v0.2.4.tar.gz"
      sha256 "818f49093123a00b79314cccd16378c624868bb9d2524e3e5ffeab6e406bf3ab"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end