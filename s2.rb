class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.11"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "0a37a2d44c1e8ff572b646b65e65dd7f8808fecedfd60029ca4916a7f7553bbb"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "7f058c6735f529ace821071adfcf3953ed57ec8a4aa0339410e0fe79cb200c76"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "416d58dc57098595796213ddb5dc7d6c8a529b066766a1f871b82841c5f0dc92"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "80fbbc74667b96169e85fbd42b3ae0e41181a542deb2cce275ce9ea42265e433"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
