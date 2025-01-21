class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.8.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7a47ac457a10e68c13c562fcd900f3b5fcc2f296d8182b09b60472341355746e"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "79d3f6df8641f50acd965f923b5610f541c87f715d12bc3e646d8e070aceeb90"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "bc8209f1e68663b802553a5430fa11516f1238170a2c6f3b4d69cd7dc0d417a5"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "163705cd7fb07ceb4267a9cd34e2c631279bf3fd1a7e5b18c15773250241614f"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end