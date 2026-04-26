class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-macos-arm64-v0.2.3.tar.gz"
      sha256 "36fbb74b84c407e71ca4c60d91be246464e1713af23f10565b486b72cef0e7f2"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-macos-x64-v0.2.3.tar.gz"
      sha256 "d63d5cf8821031a342ab570379fccd313c83a415886ddcbe2f57d10bf55ab657"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.2.3/cato-linux-x64-v0.2.3.tar.gz"
      sha256 "cf25b059bec130fd0198d73cabaaf76d1965122e898ebda7de7921eb48afa3ea"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end