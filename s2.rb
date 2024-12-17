class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.6.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "9822c61f3698bf517652e55ebb608bf8a180b58f3be4a265896356beec3c27d6"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "33ccfe22c6b30e4444dd9e47b73c75648cb876c4e15dfa6473bcffb632f44262"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "773a6a4b975c46526bc0089ebaccb1356cf3024a5bf93144356b1765621237b0"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "7affdf9507c00d4bea8b1bfd039e35bbb2167f6e76febe7c18572f56f32e68b6"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end