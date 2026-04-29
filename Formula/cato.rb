class Cato < Formula
  desc "Portable sandbox for secure command execution"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.1/cato-macos-arm64-v0.5.1.tar.gz"
      sha256 "21b7c1df07d0036c416f360f913136da01271f343e85df278cea110b13243b15"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.1/cato-macos-x64-v0.5.1.tar.gz"
      sha256 "bf2deba3fd62691a23a1f363d9d359c5b8ff4c1e9380bbbc1fb150cda95a0154"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.5.1/cato-linux-x64-v0.5.1.tar.gz"
      sha256 "b77d8d60d172fd4532b584d5632e461ed2bd1e030520dfed97170b4c18bdd664"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end