class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.40.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "94ce43475a0ed4b208d9e5e956fd435279b79be2993fe4cd5f87b603261ee3f5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ae93c9e5d0b677a970ee8f86425a9ad73ada0fc5344a620fe8dc99d868dda5b4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "a2dd5811f97948e7486c96f3590474905ff50e58b70257985fbde4a1622e90b6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fc616636e8db6eb366209fa129ed0da2ecfd418bbdd2cb1e45997c390e42299b"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
