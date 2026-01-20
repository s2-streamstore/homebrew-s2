class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.25.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "55f4ad1a5f62625e3f520b720d649a40863bbd95d3ed8723465db213d925d13e"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4f912599c76209cc7a94c34f633ef34fc0525b884a21bffbe0dce3692b58ffe6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "2e37e5b1162a73303436fb582c9f215828d1d7ef4d928467f6da2276039ccf8d"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5eaab3a73c140c40fcac5c44861d1cfc61f00aac97b03847561eba42a1c7c4b4"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end