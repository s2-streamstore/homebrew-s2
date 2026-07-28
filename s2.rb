class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.41.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "492f0f1efadd2a5ca0d7cdc9bacbbe39d51a918d256ef116c39e0accad624689"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d40492092fe0899a44346d366841c76497d361b55c560e4091355aad103f1bf6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5b5fc90c0efad3bf8a12c009bca25690a9bc0905d886c266262969d50204374e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2e2579135d115867bb186ef2f82dd393fb226862c5501e4fa3755f27c55d00be"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
