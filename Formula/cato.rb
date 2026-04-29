class Cato < Formula
  desc "Portable sandbox for secure command execution"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.2/cato-macos-arm64-v0.5.2.tar.gz"
      sha256 "d7804ea1a1ee963052bca7ec4e4806c01da74a3b289c56ba88b8760bbaa85831"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.2/cato-macos-x64-v0.5.2.tar.gz"
      sha256 "9547df1f3dfdd94ee522e3582ad3cb22936ad8170c1405676c4e22ea9fef2700"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.2/cato-linux-x64-v0.5.2.tar.gz"
      sha256 "db85d3ac32d9e952cf24392823ba80904d774562547f906e6f2d8378550bca78"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end