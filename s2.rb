class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "34df72cbb7b1e86d99758fc56763082201573473c2e3066137411e9c0575b5d2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ef6f897dafaacaab5225b3bb3bc539d6913e6ea179a2f96db98aed235b0f21bc"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "3c4b099696645182cf9b10890b1ec52c58c577d6c02d58b5f2dd3dd30d7ddba3"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2cfb5ed959bcad371495ecdd81d0cd4540b039ac7a348837807d45d5cf0a2a95"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
