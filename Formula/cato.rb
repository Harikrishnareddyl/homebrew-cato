class Cato < Formula
  desc "Portable sandbox for secure command execution"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.0/cato-macos-arm64-v0.5.0.tar.gz"
      sha256 "13fca20e0c8ad840a30de9348dbaf9ca11c878875aadd7b5ffa6c0809b310ffb"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.0/cato-macos-x64-v0.5.0.tar.gz"
      sha256 "9bd9c4e081149bba4d78c598effd866525ae35cc2078fac40db50ff7fe9f071e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.0/cato-linux-x64-v0.5.0.tar.gz"
      sha256 "ec426ba25083b97093a1045196f189ba453582b468484ffaacecf18ba4a4a708"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end