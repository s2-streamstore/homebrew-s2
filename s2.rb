class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.16.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "1dd328ee325c26e6ffba628865e2d8f670a897abbeb6bf7e7d3d4860bc8e6116"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "823441e4c2d3aa8b4cc414e5eaed35be56098bb6fe1c5034f77b4ecad8468269"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c0f73a1591c0fa351ca9b2667098c7f1a58f0b612e2b59a64f0358b9c1228e52"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d038f72feddb4a1d468bbf945844bfca0ed9ba78a227d5dd3039795198011978"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end