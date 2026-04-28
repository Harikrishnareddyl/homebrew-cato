class Cato < Formula
  desc "Portable sandbox for secure command execution"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.1/cato-macos-arm64-v0.4.1.tar.gz"
      sha256 "63c324d9faaf822f01a63fa5c39483942926b07b9944816d0776465e6ba6461e"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.1/cato-macos-x64-v0.4.1.tar.gz"
      sha256 "e308be9a9c39d72db4463cf3887e13b3621868368f5617beb04078ee1969df27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.1/cato-linux-x64-v0.4.1.tar.gz"
      sha256 "6dca58559e95cda0f7cc95bab1f8360e5d8b325a678288324d419ee2a7dcbdad"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end