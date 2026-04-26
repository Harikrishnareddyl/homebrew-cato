class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.4/cato-macos-arm64-v0.3.4.tar.gz"
      sha256 "7a1c7d62605e1e8885dd48f038c80985813538f448b1ab10ee46879a6f4be492"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.4/cato-macos-x64-v0.3.4.tar.gz"
      sha256 "e7a977995c2544b439f76fbb52cd4940c83587a8cc024b2dc3ebf653f01535ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.4/cato-linux-x64-v0.3.4.tar.gz"
      sha256 "b5e3085c0fc73c943f98a6f21f68646e28f5177cc1403ab6dcc4bda228878353"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end