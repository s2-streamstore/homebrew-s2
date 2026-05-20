class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "0ec0ddc7cc5ef16f0f81ab6993329a2dc80f0124160fe12c732bf62b175759f6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "077f3e84057958b6a245a3cdd1da083729f4199351630622b5fb2d52cf6acd45"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8b278f9828fdc1a46b67493e716636e4547d268d50a6703906dcdccb0e9bd82b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "479305e591d0d7362dee603a98428bb96878ffbfd96ab1b95b9c9104be2c5792"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
