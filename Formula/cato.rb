class Cato < Formula
  desc "Universal AI agent safety layer — protect files and commands with configurable rules"
  homepage "https://github.com/Harikrishnareddyl/cato"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.3/cato-macos-arm64-v0.3.3.tar.gz"
      sha256 "07fb0f3c44b655fb924ea89ac34ca13f20fc5ad7574cd9dbe60fb6117352af12"
    end
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.3/cato-macos-x64-v0.3.3.tar.gz"
      sha256 "55a4f39c5a63065004d1be0ff7093f662dd2483bfb5c59b4e061992dcf2367b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Harikrishnareddyl/cato/releases/download/v0.3.3/cato-linux-x64-v0.3.3.tar.gz"
      sha256 "1cfa231d024b11cf92d3065194bf633a61b758d4de7acdc584d9dfb8f9ea9535"
    end
  end

  def install
    bin.install "cato"
  end

  test do
    assert_match "cato", shell_output("#{bin}/cato --version")
  end
end