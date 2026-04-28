class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.9/cato-macos-arm64-v0.3.9.tar.gz"
      sha256 "4fe938f86874e986def7933dc913f571228e569d4df907afdee96e05eeebe4e1"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.9/cato-macos-x64-v0.3.9.tar.gz"
      sha256 "37b82660138d16670bf5778651494fe7f7c38e9f80d77acbab4c05ef582ca7d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.9/cato-linux-x64-v0.3.9.tar.gz"
      sha256 "363020f85bc338f3ee4008d8ec69ef96402ec7391ae9980d25bb6f9bedc4f76d"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end