class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.8"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6e2b11fe248529b965e2451634d9c2cc6dc10d9c386a02ef9534eca149cc5673"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "c00e6f7a9e233ea4d9cc581eefbd3cdd31da1b7ade8204cf3ad04babe7ee78b3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c2839c227232afe5abe2231b5eaaf1b34c5165f0a488c71a23513453fc325e9e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "41944ab272a1b02d61f773c0fb85ff3940b771ceffab26f1c712427c5fd88d84"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
