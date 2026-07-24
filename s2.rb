class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.41.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2edf4b67001412a13318bfd647aff668cfb9d13d185b65b0a892932ee728d239"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "2633a857daf0be8f6afda8ebe0390a17ad325cb7a4477a035fa1f6f4df2b47c4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "a1b6bad44da9136401b8806d806c979cc5c15cfb300ec5cb630731012b814fd8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d3b3ceb35a30a95334e70f5e727d0473271bdb5b451d7a8143984f68d2ac6dc5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
