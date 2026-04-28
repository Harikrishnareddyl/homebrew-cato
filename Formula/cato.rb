class Cato < Formula
  desc "Portable sandbox for secure command execution"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.0/cato-macos-arm64-v0.4.0.tar.gz"
      sha256 "500783c0714684a9042e721b9a3fc0038f0986a849c4f220321f76bd43fc2c34"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.0/cato-macos-x64-v0.4.0.tar.gz"
      sha256 "9d3aef9988f96bdfc79777764494906aa02ef938b9145b376d2553b2df8eaafd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.4.0/cato-linux-x64-v0.4.0.tar.gz"
      sha256 "a52ea9f9d6e0144c32c8d11d2b59f1d7ef04a071a49b0d1beae145dce116cd92"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end