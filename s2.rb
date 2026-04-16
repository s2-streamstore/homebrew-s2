class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.31"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b0f67a1cfdca025caf10f2d0db4e3d38b795d1d09b16c86e352d8bd51925a31c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "570f2b2866e460e4cd5c9eafc4d99d9b885a3bef99e82a54ed01e410c3bbd23a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "96565c4b080b9645da3e8959487a2eca69c486f3b77d4d055e062e6210e59653"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "f273845b7aff6d313bd335717032f517b0af96c4478468d580b8f5368a2b961a"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
