class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.2/cato-macos-arm64-v0.3.2.tar.gz"
      sha256 "c07dea786affb73cbdd31655db83403d09ba3ed9c7d06836f080544aac9e1da9"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.2/cato-macos-x64-v0.3.2.tar.gz"
      sha256 "61a2d524e40f9fe5328515c339e16cb21d224189bea369867bd071c9e041e65c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.2/cato-linux-x64-v0.3.2.tar.gz"
      sha256 "389d2d299eaed584d8d37e5caab9f06801b76ac55356955bba098ccbc57720e7"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end