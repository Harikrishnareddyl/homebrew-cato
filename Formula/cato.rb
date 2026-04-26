class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.1/cato-macos-arm64-v0.3.1.tar.gz"
      sha256 "e6098a4670ae89ffc561be40e056775afb4a97330edd93b71fa29380719bd8c5"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.1/cato-macos-x64-v0.3.1.tar.gz"
      sha256 "89618a8a103d749d1ec78286e37af999e364344d9ea1c7e23ef904a526100a82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.1/cato-linux-x64-v0.3.1.tar.gz"
      sha256 "cf0260abf74a1c9c8e9a02abb65cfd383e432369deb5c4aed646a3183aee10bb"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end