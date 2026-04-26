class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.2/cato-macos-arm64-v0.2.2.tar.gz"
      sha256 "f62fa7b8a9177cdaef8f40a183541d909363fe5495f51decc8d8465ae443bef5"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.2/cato-macos-x64-v0.2.2.tar.gz"
      sha256 "149c388fd7e5b993fcb29e08bb3b91dc58680138e2b4ff832b16bf9561dfec17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.2/cato-linux-x64-v0.2.2.tar.gz"
      sha256 "9b9c00e69348f794f43ebb62dd0528985337a2c5c0b04ba61ce70fb573d9398c"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end