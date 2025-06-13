class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.19.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "23daa9fa02e57396eafa173940e429bb1b10088e0d65ca0e99ba2ff846a12388"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b1a44b6f3e0acab62c3b6aae4e357e900b4e5109f10844347df7a30d3c5bdefb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0b0eddbde6e38dc79a3ad26affa751313e7fd4a253e478e8b87353db772c8bee"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "894f33437948764a4d9c675d6129977090872df626dc66b6edee12addcba72e5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end