class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.6/cato-macos-arm64-v0.3.6.tar.gz"
      sha256 "9905e122c0848b2b1d61fde06f63f5186fae0d6675cc7930208e5f1b9b02be20"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.6/cato-macos-x64-v0.3.6.tar.gz"
      sha256 "fb2c8c129f58edd3cb7ba5745b3f6b2ec01ed451c8466411ced602ed65f58bc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.6/cato-linux-x64-v0.3.6.tar.gz"
      sha256 "8528518f28661da88617d1a246979d386e6fadcb6187464b7071579c6a8151b7"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end